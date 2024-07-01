A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i
dist = (B-A).abs
puts V-W > 0 && dist <= T * (V-W) ? 'YES' : 'NO'