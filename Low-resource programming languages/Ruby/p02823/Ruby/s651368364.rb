n,a,b = gets.split.map(&:to_i)

d = b - a

if d.even?
  puts d / 2
else
  puts [b-1, n-a].min
end