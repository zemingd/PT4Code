X, A = gets.split.map(&:to_i)

  ans = 0

  ans = 0 if X < A
  ans = 10 if X >= A
puts ans
