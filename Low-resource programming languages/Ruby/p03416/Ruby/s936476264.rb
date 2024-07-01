#標準入力を取得
input = gets.split(" ").map(&:to_i)
from = input[0]
to = input[1]

#出力結果格納変数を定義
count = 0

#値の回文判定　fromからtoまで繰り返し
(from..to).each do |n|
  array = n.to_s.split("").map(&:to_i)
  if array[0] == array[4] && array[1] == array[3]
    count += 1
  end
end

#回答を出力
puts count
