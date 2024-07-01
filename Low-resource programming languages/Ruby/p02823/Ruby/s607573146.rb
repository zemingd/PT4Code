n, a, b = gets.split.map(&:to_i)

if (b-a-1) % 2 == 1
  puts (b-a+1) / 2
else
  puts [a-1, n-b].min + 1 + (b-a)/2
end