A, B, C, D = gets.split.map(&:to_i)
s = [A, C].max
e = [B, D].min
ans = [e - s, 0].max
puts ans
