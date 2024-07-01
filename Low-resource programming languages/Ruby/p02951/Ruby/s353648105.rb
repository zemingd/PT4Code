A, B, C = gets.split.map(&:to_i)
nokoriAB = A - B
ans = C - nokoriAB
ans = 0 if ans < 0
puts ans