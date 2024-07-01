H, W = gets.split(" ").map(&:to_i)
h, w = gets.split(" ").map(&:to_i)

all_cell = H * W
puts all_cell - (H * w + W * h) + h * w