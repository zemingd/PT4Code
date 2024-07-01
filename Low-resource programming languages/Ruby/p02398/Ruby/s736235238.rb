a, b, c = gets.chomp.split(/\s/).map(&:to_i)

count = 0 
(c / 2).times do |i| 
  i += 1
  count += 1 if c % i == 0 && i.between?(a, b)
end

puts count