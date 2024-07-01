A, B = gets.split.map(&:to_i)
ans = [
  A + B,
  A - B,
  A * B
].max
puts ans
