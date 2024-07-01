n = gets.to_i
a = gets.split.map(&:to_i)
ans = -n
a.each do |i|
  ans += i
end
puts ans
