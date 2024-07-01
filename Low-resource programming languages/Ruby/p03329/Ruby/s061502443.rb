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
num_list.sort!
dp = Array.new(n,nil)
dp[0] = 0
k = 0
while k <= n
  if dp[k]
    num_list.each do |num|
      if !dp[k+num]
        dp[k+num] = dp[k] + 1
      else
        dp[k+num] = [dp[k+num],dp[k]+1].min
      end
    end
  end
  k += 1
end
puts dp[n]