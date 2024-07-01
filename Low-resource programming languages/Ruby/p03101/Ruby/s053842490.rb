H,W = gets.split.map(&:to_i)
h,w=gets.split.map(&:to_i)
tot = H * W
sum = h * W
sum += w * H
sum -= w * h
puts tot - sum