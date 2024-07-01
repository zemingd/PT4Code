H, W = gets.split.map(&:to_i)
puts (H == 1 || W == 1) ? 1 : ((H * W) / 2.0).ceil