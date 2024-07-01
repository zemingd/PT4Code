N,W=gets.chomp.split.map(&:to_i)
weightandvalue = N.times.map {gets.chomp.split.map(&:to_i)}
dp =  Array.new(N+1).map{|i|Array.new(W+1,0)}
0.upto(N-1) do |i|
  0.upto(W) do |sum_w|
    if sum_w >= weightandvalue[i][0]
      dp[i+1][sum_w]=[dp[i+1][sum_w], dp[i][sum_w - weightandvalue[i][0]] + weightandvalue[i][1]].max
    else
      dp[i+1][sum_w]= dp[i][sum_w]
    end  
  end  
end
puts dp[N][W]