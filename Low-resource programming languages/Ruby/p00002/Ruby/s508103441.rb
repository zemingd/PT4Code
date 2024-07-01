until (l = gets).nil?
  a, b = l.chomp.split
  c = a.to_i + b.to_i
  n = 0
  while c > 0
    c = c / 10
    n += 1
  end
  puts n
end