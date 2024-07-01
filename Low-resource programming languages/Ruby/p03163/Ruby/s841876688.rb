n,w=gets.split.map &:to_i
given=Array.new(n){gets.split.map &:to_i}
dp=Array.new(w+1,0)
0.upto(n-1) do |i|
  w.downto(given[i][0]) do |j|
    can=dp[j-given[i][0]] + given[i][1]
    if can > dp[j]
      dp[j] = can
    end
  end
end

puts dp.last