n,w=gets.split.map &:to_i
given=Array.new(n){gets.split.map &:to_i}
dp=Array.new(w+1,0)
0.upto(n-1) do |i|
  w.downto(given[i][0]) do |j|
    dp[j]=[ dp[j-given[i][0]] + given[i][1], dp[j] ].max
  end
end

puts dp.last