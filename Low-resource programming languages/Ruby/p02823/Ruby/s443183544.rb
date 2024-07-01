n, a, b = gets.chomp.split(' ').map(&:to_i)

if (a -b) % 2 == 0
  puts (a-b).abs / 2
  exit
end

large = [a,b].max
small = [a,b].min

if (large - 1) > (n - small)
  puts large - 1
else
  puts n - small
end