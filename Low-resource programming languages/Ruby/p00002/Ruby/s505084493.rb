while n = gets
  a, b = n.chomp.split
  a, b = a.to_i, b.to_i
  sum = a + b
  cnt = 0
  while sum >= 1
    sum /= 10
    cnt += 1
  end
  p cnt
end


