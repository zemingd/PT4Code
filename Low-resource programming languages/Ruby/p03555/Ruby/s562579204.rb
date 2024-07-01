k = gets.to_i
 
dp = Array.new(k,46)
dp[1] = 1
deq = [1]
 
v = 0
loop  do
  
  break if deq[0] == 0 
  
  v = deq[0]
  
  deq.shift
  u = ( v * 10 ) % k
  if dp[u] > dp[v] then
    dp[u] = dp[v]
    deq.unshift(u)
  end
  
  u = ( v + 1 ) % k
  if dp[u] > dp[v] + 1 then
    dp[u] = dp[v] + 1
    deq.push(u)
  end
end
 
puts dp[0]