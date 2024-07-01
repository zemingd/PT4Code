a, b = gets.split.map &:to_i
if (a+b)%2==1
  puts :IMPOSSIBLE
else
  p (a+b)/2
end