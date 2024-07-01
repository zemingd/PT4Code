H, W = gets.chomp.split.map(&:to_i)

h, w = gets.chomp.split.map(&:to_i)

ans = (H - h) * (W - w)

puts ans
