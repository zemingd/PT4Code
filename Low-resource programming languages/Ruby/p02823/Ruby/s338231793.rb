n, a, b = gets.chomp.split(' ').map(&:to_i)

if (a -b) % 2 == 0
  puts (a-b).abs / 2
  exit
end

large = [a,b].max
small = [a,b].min

edge_dis = [small-1, n-large].min
puts edge_dis + 1 + (large - small - 1) / 2