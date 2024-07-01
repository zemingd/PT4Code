( W, H, x, y ) = gets.split(' ').map(&:to_i)
ret1 = W * H / 2
ret2 = W/2 == x && H/2 == y ? 1 : 0
puts "#{ret1} #{ret2}"