A, B, C = gets.split.map(&:to_i)
n = [A, B, C].sort.reverse
p n[0]*10 + n[1] + n[2]