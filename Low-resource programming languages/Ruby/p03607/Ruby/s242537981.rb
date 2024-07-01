n = gets.to_i
as = n.times.map{gets.to_i}.sort
dp = Array.new(as[-1]+1)
as.each do |a|
  if dp[a]
    dp[a] = nil
  else
    dp[a] = 1
  end
end
dp.compact!
puts dp.size
