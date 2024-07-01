N,_=gets.split(" ").map{|i| i.to_i}
h=gets.split(" ").map{|i| i.to_i}
DP=Array.new(N){0}
DP[2-1] = (h[2-1]-h[1-1]).abs
for i in 2..(N-1)
	DP[i] = [(h[i]-h[i-2]).abs+DP[i-2], (h[i]-h[i-1]).abs+DP[i-1]].min
end
puts DP[N-1]
