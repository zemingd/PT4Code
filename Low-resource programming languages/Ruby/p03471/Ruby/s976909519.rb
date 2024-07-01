# 10000 円札と、5000 円札と、1000 円札が合計で n 枚あって、
# 合計金額が y 円であったという。
# このような条件を満たす各金額の札の枚数の組を 1 つ求めなさい。
# そのような状況が存在し得ない場合には -1 -1 -1 と出力しなさい。

input = gets.chomp.split

# 札の枚数を取得
n = input[0].to_i

# 合計金額を取得
y = input[1].to_i

# 組み合わせを返す関数を定義
def judge(n, y)
  n.times do |i|
    loop do
      j = 1
      k = n - (i + j)
      if k < 0
        break
      end
          
      # 合計金額を計算
      sum = 1000 * i + 5000 * j + 10000 * k
      
      # 合計金額が条件を満たすか判定
      if sum == y
        return "#{k} #{j} #{i}"
      end

      j += 1
    end
  end
  
  # 組み合わせが無かった場合
  return "-1 -1 -1"
end

# 結果を出力
puts judge(n, y)