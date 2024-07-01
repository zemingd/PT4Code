n, a, b = gets.split.map(&:to_i)

if (a-b).abs.even?
  puts (a-b).abs/2
elsif (a-b).abs == 1
  puts [b-1, n-a].min
else
  x = a + (b - (a+1))/2
  # puts x
  y = (n-b+1) + (n-a - (n-b+1))/2
  # puts y
  puts [x, y].min
end