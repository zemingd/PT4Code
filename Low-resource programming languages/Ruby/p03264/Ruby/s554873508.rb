k = gets.chomp.to_i

m = (k / 2)

c = 0
if k % 2 == 0 then
  c = m * m
else
  c = m * (m + 1)
end

puts c.to_s