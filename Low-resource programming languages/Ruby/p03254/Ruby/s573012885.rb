n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

ans = 0
a.each do |i|
  ans += 1 if (x -= i) >= 0
end
ans -= 1 if x > 0

puts ans