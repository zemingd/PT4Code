n = gets.to_i
num_list = [1]
i = 1
while true
  if 6**i <= n
    num_list << 6**i
  else
    break
  end
  i += 1
end
j = 1
while true
  if 9**j <= n
    num_list << 9**j
  else
    break
  end
  j += 1
end
num_list.sort!.reverse!
k = 0
ans = 0
while k < num_list.size
  ans += n/num_list[k]
  n -= num_list[k]*(n/num_list[k])
  k += 1
end
puts ans
