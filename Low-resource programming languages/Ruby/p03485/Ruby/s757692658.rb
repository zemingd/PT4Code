a,b=gets.split.map(&:to_i)
if (a+b)%2 ==0
  puts (a+b)/2
else
  puts ((a+b)/2)+1
end