H,W = gets.split.map(&:to_i)
h,w = gets.split.map(&:to_i)
p (H * W) - (((N * n) + (W * w) - (w * n)))