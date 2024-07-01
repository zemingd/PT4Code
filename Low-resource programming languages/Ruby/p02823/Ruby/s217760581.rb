n,a,b = gets.split.map(&:to_i)

d = b - a

if d.even?
  puts d / 2
else
  puts [a-1, n-b].min + 1 + (b-a-1) / 2
end