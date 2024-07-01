n,w = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(w+1,0)
for i in 1..n
  wei,val = gets.chomp.split(" ").map(&:to_i)
  for j in wei..w
    if dp[w-j]+val > dp[w-j+wei]
      dp[w-j+wei] = dp[w-j]+val
    end
  end
end
puts dp[-1]
