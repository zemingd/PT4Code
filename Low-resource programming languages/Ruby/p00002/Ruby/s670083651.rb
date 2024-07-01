while s = gets
  n, m = s.split(" ").map(&:to_i)
  sum = n + m
  puts sum.to_s.length
end