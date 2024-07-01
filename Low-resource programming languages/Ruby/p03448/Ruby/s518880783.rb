y500_count = gets.chomp.to_i
y100_count = gets.chomp.to_i
y50_count = gets.chomp.to_i
x = gets.chomp.to_i

products = (0..y500_count).to_a.product((0..y100_count).to_a, (0..y50_count).to_a)
count = products.count do |y500, y100, y50|
  y500 * 500 + y100 * 100 + y50 * 50 == x
end
puts count