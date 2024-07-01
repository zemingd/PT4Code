N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

# 全て奇数の2倍でなければ答えは0
if A.any?{|x| (x / 2) % 2 == 0}
  puts 0
  exit
end

# 全て1/2にしたB
B = A.map{|v| v / 2}
mul = B.inject(&:*)

max_m = M / mul
if max_m % 2 == 0
  puts max_m / 2
else
  puts max_m / 2 + 1
end
