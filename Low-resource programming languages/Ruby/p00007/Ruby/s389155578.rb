n = gets.chomp.to_i

l = 100000.0

for i in 0...n
  l = (l * 1.05 / 1000).ceil * 1000
end

puts l

