W, H, x, y = gets.split.map(&:to_f)

area = W*H/2

other = 0

if x == W/2 and y == H/2
  other = 1
end

puts "#{area} #{other}"