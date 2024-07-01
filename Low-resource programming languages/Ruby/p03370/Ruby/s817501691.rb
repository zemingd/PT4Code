include Math

n, x = gets.chomp.split(" ").map(&:to_i)

m = []

n.times do
  m << gets.chomp.to_i
end

m.each do |v|
  x -= v
end

r = (x / m.min).floor

puts m.size + r