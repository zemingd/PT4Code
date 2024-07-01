io = STDIN
H,W=io.gets.split.map(&:to_i)
h,w=io.gets.split.map(&:to_i)
puts (H-h) * (W-w)
