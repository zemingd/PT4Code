str = gets.chomp
len = str.length

str = str.reverse

dp = Array.new(len + 1).map{Array.new(13, 0)}

if str[0] == '?'
  for i in 0..9
    dp[1][i.to_i.modulo(13)] = 1
  end
else
  dp[1][str[0].to_i.modulo(13)] = 1
end

for n in 1..(len-1)
  if str[n] == '?'
	for i in 0..9
      for j in 0..12
	    dp[n+1][(j + (i * (10 ** n)).modulo(13)).modulo(13)] += dp[n][j]
      end
    end
  else
    for j in 0..12
      dp[n+1][(j + (str[n].to_i * (10 ** n)).modulo(13)).modulo(13)] += dp[n][j]
    end  
  end
end


puts dp[len][5] % (1000_000_007)