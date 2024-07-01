n, l = gets.chomp.split.map(&:to_i)
if l > 0
  puts n * (l - 1) + n * (n + 1) / 2 - l
elsif l + n - 1 < 0
  puts n * (l - 1) + n * (n + 1) / 2 - (l + n - 1)
else
  puts n * (l - 1) + n * (n + 1) / 2
end
  

