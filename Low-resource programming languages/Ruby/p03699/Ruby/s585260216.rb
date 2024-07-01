n=gets.chomp.to_i
dp=Array.new(10000+1){false}
dp[0]=true
n.times do
  v=gets.chomp.to_i
  10000.downto 0 do |i|
    if dp[i] and i+v<=dp.size
      dp[i+v]|=dp[i]
    end
  end
end
10000.downto 0 do |i|
  if i%10>0 and dp[i]
    puts i
    exit 0
  end  
end
puts 0