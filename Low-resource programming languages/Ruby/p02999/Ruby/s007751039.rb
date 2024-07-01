w, h, x, y = gets.chomp.split(" ").map(&:to_i)

puts w * h / 2.to_f

if 2 * x == w && 2 * y == h then
  puts "1"
else
  puts "0"
end
