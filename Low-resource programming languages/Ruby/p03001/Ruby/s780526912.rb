W, H, x, y = gets.split.map(&:to_f)

area = (W * H).to_f / 2
num = (W/2 == x && H/2 == y) ? 1 : 0
puts "#{area} #{num}"

