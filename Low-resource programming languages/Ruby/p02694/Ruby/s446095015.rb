base = 100
count = 0
X = gets.to_i

while X > base do
  base += (0.01*base).to_i
  count += 1
end

puts "#{count}"