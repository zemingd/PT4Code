k = gets.to_i
a, b = gets.split.map(&:to_i)
ans = "NG"
(a..b).each do |i|
  ans = "OK" if i%k==0
end
puts ans 