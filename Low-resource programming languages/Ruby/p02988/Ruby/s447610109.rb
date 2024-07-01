n = gets.to_i
as = gets.split(" ").map(&:to_i)
cnt = 0

for i in 1..n-2
  cnt+=1 if (as[i-1]<as[i] && as[i]<as[i+1]) || (as[i-1]>as[i] && as[i]>as[i+1]) 
end
puts cnt
