def solve
  n, k = gets.split.map!(&:to_i)
  print n.to_s(k).length
end
solve