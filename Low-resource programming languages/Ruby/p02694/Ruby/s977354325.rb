x = gets.chomp.to_i
count = 0
y = 100
while y<x do
  y += y / 100
  count += 1
end

puts count

