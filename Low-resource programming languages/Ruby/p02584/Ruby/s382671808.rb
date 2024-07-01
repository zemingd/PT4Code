x, k, d = gets.chomp.split(' ').map(&:to_i)
if x.abs > k * d
  puts x.abs - (k * d)
else
  base = (x.abs / d).to_i
  if (k - base) % 2 == 0
    puts (x.abs - (base * d)).abs
  else
    puts d - (x.abs - (base * d)).abs
  end
end
