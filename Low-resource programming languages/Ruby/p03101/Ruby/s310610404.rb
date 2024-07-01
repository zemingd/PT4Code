H,W,h,w = [gets, gets].join(' ').split.map(&:to_i)
puts (H - h) * (W - w)
