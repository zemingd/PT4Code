H, W = STDIN.gets.chomp.split(' ').map(&:to_i)
h, w = STDIN.gets.chomp.split(' ').map(&:to_i)

puts (H - h) * (W - w)