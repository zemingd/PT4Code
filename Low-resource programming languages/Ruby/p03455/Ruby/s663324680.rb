# 入力a bを変数a bに格納
a, b = gets.split(" ").map(&:to_i)
puts "#{a * b % 2 == 0 ? 'Even' : 'Odd'}"