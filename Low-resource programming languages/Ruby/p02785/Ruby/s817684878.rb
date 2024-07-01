n, k  = gets.split.map(&:to_i)
hps = gets.split.map(&:to_i).sort.reverse
if k >= n 
  puts 0
else
  res = hps[k.. -1].inject(:+) || 0
  puts res
end