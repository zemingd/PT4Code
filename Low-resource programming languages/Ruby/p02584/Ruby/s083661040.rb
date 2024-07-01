x,k,d = gets.split.map(&:to_i)
x = x.abs

if x / d < k
  if (k - (x / d)) % 2 == 0
    puts (x - (x / d) * d).abs
  else
    puts ((x - (x / d) * d).abs - d).abs
  end
else
  puts (x - k * d).abs
end
