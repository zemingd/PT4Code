# 提出結果　
# n 料理の種類
# a 料理名
# b 満足度
# c 料理 a + 1を食べた時の満足度

n = gets.chomp.to_i
a_foods = gets.chomp.split(" ").map(&:to_i)
b_sfn = gets.chomp.split(" ").map(&:to_i)
c_bonus_sfn = gets.chomp.split(" ").map(&:to_i)

return if n < 2 || 21 < n

total_sfn = 0
one_of_just_before = -1

a_foods.each_with_index do |a, index|
  total_sfn += b_sfn[a-1]
  total_sfn += c_bonus_sfn[one_of_just_before-1] if one_of_just_before == a - 1
  one_of_just_before = a
  # p("追加ポイント: #{b_sfn[one_of_just_before-1]}")
  # p("総和: #{total_sfn}")
  # p("before_one: #{one_of_just_before}")
end

p total_sfn