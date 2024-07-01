n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

m = n - k

if m <= 0
  puts 0
else
  puts ps.sort[0...m].inject(:+)
end