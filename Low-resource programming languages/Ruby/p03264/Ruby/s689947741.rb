n = gets.to_i
if n.odd?
  ans = (n+1)*(n-1)/4
else
  ans = n**2/4
end
p ans