N = gets.chomp # 文字列
sum = N.split("").map(&:to_i).inject(:+)
puts (N.to_i % sum == 0) ? "Yes" : "No"
