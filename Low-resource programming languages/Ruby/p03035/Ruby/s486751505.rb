#標準入力から年齢と料金を取得
array = gets.split(" ").map(&:to_i)
age = array[0]
fee = array[1]

#年齢判定
if age <= 5
  puts "0"
elsif 13 <= age
  puts fee
else
  puts fee/2
end