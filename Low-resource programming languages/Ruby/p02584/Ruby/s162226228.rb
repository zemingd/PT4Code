x, k, d = gets.chomp.split.map(&:to_i)

if (x.abs / d) >= k
  puts x.abs - (d * k)
elsif (k - (x.abs / d)) % 2 == 0
  puts x.abs - (d * (x.abs / d))
else
  puts (d * ((x.abs / d) + 1)) - x.abs
end