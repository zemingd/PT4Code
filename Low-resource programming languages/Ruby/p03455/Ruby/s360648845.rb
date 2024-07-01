n,m = $stdin.gets.sprit.map(&:to_i)
x = n * m
if(x % 2 == 1)
  return'Odd'
else
  return'Even'
end