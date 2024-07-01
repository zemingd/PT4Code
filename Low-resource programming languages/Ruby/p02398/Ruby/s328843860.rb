a, b, c = gets.split.map(&:to_i)
ans = 0
for i in a..b
  if c % i == 0 then ans += 1 end
end

puts ans
