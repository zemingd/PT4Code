n, k = gets.chomp.split.map(&:to_i)
m = gets.chomp.split.map(&:to_i).sort.reverse
if k >= n
  puts 0
else
  all_m = m
  all_m = m.slice(k, n-1) if k != 0
  puts all_m.inject(:+)
end