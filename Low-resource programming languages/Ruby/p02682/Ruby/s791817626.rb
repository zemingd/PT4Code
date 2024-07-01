a, b, c, k = gets.split.map(&:to_i)

answer =
  if k < a
    k
  elsif a <= k && k < a + b
    a
  else
    a - (k - (a + b))
  end

puts answer
