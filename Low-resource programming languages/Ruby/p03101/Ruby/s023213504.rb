(H, W), (h, w) = readlines.map{|l| l.split.map(&:to_i)}

puts (H - h) * (W - w)