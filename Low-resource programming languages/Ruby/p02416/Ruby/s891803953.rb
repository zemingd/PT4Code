loop do
  n = gets.split("")
  if n == 0
    break
  end
  j = 0
  for i in 1..n.length
    j += n[i-1].to_i
  end
  print j, "\n"
end
