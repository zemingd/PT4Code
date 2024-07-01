(H, W) = gets.split.map(&:to_i)
(h2, w2) = gets.split.map(&:to_i)

c = H * W
d = 0

H.times do |i|
  W.times do |j|
    d = d + 1 if i < h2 || j < w2
  end
end

puts c - d