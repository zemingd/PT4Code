def min n,m
  if n > m
    return m
  else
    return n
  end
end
table = Array.new(100100,10000)
n = gets.to_i
table[0] = 0
for i in 1..n do
  table[i] = table[i-1] + 1
  if i >= 6
    table[i] = min(table[i-6] + 1,table[i])
  end
  if i >= 36
    table[i] = min(table[i-36] + 1,table[i])
  end
  if i >= 216
    table[i] = min(table[i-216] + 1,table[i])
  end
  if i >= 1296
    table[i] = min(table[i-1296] + 1,table[i])
  end
  if i >= 7776
    table[i] = min(table[i-7776] + 1,table[i])
  end
  if i >= 46656
    table[i] = min(table[i-46656] + 1,table[i])
  end
  if i >= 46656
    table[i] = min(table[i-46656] + 1,table[i])
  end
  if i >= 9
    table[i] = min(table[i-9] + 1,table[i])
  end
  if i >= 81
    table[i] = min(table[i-81] + 1,table[i])
  end
  if i >= 729
    table[i] = min(table[i-729] + 1,table[i])
  end
  if i >= 6561
    table[i] = min(table[i-6561] + 1,table[i])
  end
  if i >= 59049
    table[i] = min(table[i-59049] + 1,table[i])
  end
end
puts table[n].to_s