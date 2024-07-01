n, a, b = gets.split.map(&:to_i)

if (a-b).abs.even?
  puts (a-b).abs/2
else
  x = [(a-1), (b-1)].max
  y = [(n-a),(n-b)].max
  puts [x, y].min
end