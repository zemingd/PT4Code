def solve
  x, y, z = gets.split.map!(&:to_i)
  tmp1 = x
  x = y
  y = tmp1
  tmp2 = x
  x = z
  z = tmp2

  print x," ", y, " ",z
end
solve