n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
min_val = a.min
max_val = a.max
(min_val..max_val).each do |i|
  c = a.count{|j| j==i || j==i+1 || j==i-1}
  ans = c if c > ans
end

puts ans