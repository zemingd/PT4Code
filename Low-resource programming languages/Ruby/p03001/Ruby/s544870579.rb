W, H, x, y = gets.chomp.split(' ').map(&:to_i)

res = sprintf("%1f", (W * H) / 2r)
puts "#{res} #{x + x == W && y + y == H ? 1 : 0}"
