n,a,b = gets.split.map(&:to_i)

if (b-a).even?
  puts (b-a)/2
else
  puts [n-b, n-a].min
end