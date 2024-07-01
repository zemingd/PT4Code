a,b,c,k = gets.split.map(&:to_i)
if a >= k
  p k
elsif a+b >= k
  p a
else
  p a-(k-a-b)
end