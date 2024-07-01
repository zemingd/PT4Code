n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.each do |i|
  c = a.count{|j| j==i || j==i+1 || j==i-1}
  ans = c if c > ans
end

puts ans