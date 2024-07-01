n,w = gets.chomp.split(" ").map(&:to_i)
dp = []
for i in 1..n
  wei,val = gets.chomp.split(" ").map(&:to_i)
  inst = [[wei,val]]
  if dp.length > 0
    for i in 0..dp.length - 1
      if dp[i][0]+wei <= w
        inst.push([dp[i][0]+wei,dp[i][1]+val])
      end
    end
  end
  for j in 0..inst.length - 1
    dp.push(inst[j])
  end
  dp.sort!
  count = 0
  while count != dp.length - 1
    if dp[count][1] >= dp[count+1][1]
       dp.delete_at(count+1)
    else
       count += 1
    end       
  end
end
puts dp[-1][1]
