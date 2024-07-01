def solve
  n = readline.to_i
  d = readline.split.map!(&:to_i)
  sorted_d = d.sort
  p sorted_d[n/2] - sorted_d[n/2-1]
end

solve