n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.each do |x|
  ans += x - 1
end
puts ans
