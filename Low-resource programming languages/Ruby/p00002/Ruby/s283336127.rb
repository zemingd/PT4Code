while n = gets
  a,b = n.chomp.split
  a = a.to_i
  b = b.to_i
  
  sum = a + b
  cnt = 1
  while sum >= 10
    sum /= 10
    cnt += 1
  end
  puts cnt
end

