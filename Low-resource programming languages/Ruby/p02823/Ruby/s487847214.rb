n, a, b = gets.split.map(&:to_i)

if (a-b).abs.even?
  puts (a-b).abs/2
elsif (a-b).abs == 1
  puts [b-1, n-a].min
else
  puts (a-b).abs
end