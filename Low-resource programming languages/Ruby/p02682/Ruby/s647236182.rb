a,b,c,k = gets.split.map(&:to_i)
ans = 0
if a>=k
  ans = k
elsif a+b>=k
  ans = a
else
  ans = a-(k-(a+b))
end
puts ans