$debug = true

def check_answer(base, additions)
  num = ""
  base.length.times do |i|
    if base[i].nil?
      num += additions.shift.to_s
    else
      num += base[i].to_s
    end
  end
  num = num.to_i
  num % 13 == 5 # これでtrueかfalseが返る
end

# p check_answer([nil, nil, 2, nil, nil, 5], [4, 8, 3, 0])
# => true

### DFS: Depth-First Search = 深さ優先探索
# スタックによる実装
def iterative_dfs(limit, base_pattern)
  # 条件を満たしたセットの数 count
  count = 0

  # スタックとなる配列を用意し、初期状態である空配列を格納する
  stack = [[]]
  until stack.empty?
    # スタックから1つ取り出す（末尾から取り出すのでpopを使う）
    current_array = stack.pop

    if current_array.length == limit
      # 頂点に達した際の処理
      count += 1 if check_answer(base_pattern, current_array)
    else
      # 分岐処理
      (0..9).each do |num|
        stack << current_array + [num]
      end
    end
  end

  # 条件を満たしたセット数を返す
  count % (10**9 + 7)
end

BASE = gets.chomp.split("").map { |char| char == "?" ? nil : char.to_i }
nil_num = BASE.count(nil)
puts iterative_dfs(nil_num, BASE)
