n,m=gets.split(" ").map{|k|k.to_i}
broken_step = []
pattern = [1,1,2]
for i in 3..n 
  pattern[i] = (pattern[i-1] + pattern[i-2])%1000000007
end
broken_step[0] = -1
broken_step[m+1] = n+1
step = []
for i in 1..m
  broken_step[i] = gets.to_i
end
for i in 1..m+1
  step [i-1] = broken_step[i] - broken_step[i-1] - 2
end
for i in 3..step.sort[-1] 
  pattern[i] = (pattern[i-1] + pattern[i-2])%1000000007
end
ans = 1
for i in 0..step.size-1
  ans = (ans * pattern[step[i]])%1000000007
end
puts ans