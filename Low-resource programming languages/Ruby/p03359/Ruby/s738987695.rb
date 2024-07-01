a,b = gets.split.map(&:to_i)
ans = 0
(1..a).each do |i|
  ans += 1 if i <= b
end

puts ans