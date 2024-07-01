H, W = $stdin.readline.split(" ").map(&:to_i)
h, w = $stdin.readline.split(" ").map(&:to_i)

puts (H - h) * (W - w)
