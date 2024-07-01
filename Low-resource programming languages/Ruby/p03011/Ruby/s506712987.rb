P, Q, R = gets.split.map(&:to_i)
ans = [
  P + Q,
  R + Q,
  P + R
].min
puts ans
