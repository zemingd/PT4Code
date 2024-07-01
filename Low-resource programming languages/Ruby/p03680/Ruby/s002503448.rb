n = gets.to_i
memo = [0]*n
a = n.times.map{gets.to_i}

memo[0] = 1
count = 0
i = 0
while true
  count += 1
  i = a[i]-1
  if i == 1
    puts count
    exit
  end
  if memo[i] != 0
    puts -1
    exit
  end
  memo[i] += 1
end
