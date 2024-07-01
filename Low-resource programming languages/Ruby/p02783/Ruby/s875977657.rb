h, a = gets.split.map(&:to_i)

ans = 0

while h > 0 do
  ans += 1
  h -= a
end

puts ans