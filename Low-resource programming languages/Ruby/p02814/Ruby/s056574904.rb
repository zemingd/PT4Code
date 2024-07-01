N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = A.map{|a| a / 2 }
m = B.inject(&:lcm)
s2 = A.map{|a| (0 .. 100).find{|i| a[i] > 0} }

if s2.uniq.size > 1
  puts 0
else
  puts (M / m + 1) / 2
end