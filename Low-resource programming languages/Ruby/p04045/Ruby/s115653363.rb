$debug = true

### DFS: Depth-First Search = 深さ優先探索
# スタックによる実装
def iterative_dfs(nums, border)
  answer = nil

  # 嫌いな数字を除いた、使用できる数字。
  good_nums = (0..9).to_a - nums

  # スタックとなる配列を用意し、初期状態である空配列を格納する
  stack = [[]]
  until stack.empty?
    # スタックから1つ取り出す（末尾から取り出すのでpopを使う）
    current_num = stack.pop

    if current_num.length == border.to_s.length
      # 頂点に達した際の処理
      current_num = current_num.reverse.join("").to_i

      if current_num == border
        answer = current_num
        break
      elsif current_num > border
        answer = [answer, current_num].compact.min
      end
    else
      # 分岐処理
      good_nums.each do |chosen_num|
        stack << current_num + [chosen_num]
      end # of nums.each
    end # of if
  end # of until

  if answer.nil?
    # 桁が不足しており、まだ答えが定まらないパターンの対処
    digits = border.to_s.length
    answer = (((good_nums - [0]).min).to_s + "0" * digits).to_i
  end

  # 結果を返す
  answer
end # of def

PRICE, _k = gets.split.map(&:to_i)
hate_numbers = gets.split.map(&:to_i)
answer = iterative_dfs(hate_numbers, PRICE)

puts answer
