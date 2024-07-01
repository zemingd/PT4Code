W,H,x,y = gets.split.map(&:to_i)


puts "#{W.to_f * H.to_f / 2} #{2*x == W && 2*y == H ? 1 : 0}"