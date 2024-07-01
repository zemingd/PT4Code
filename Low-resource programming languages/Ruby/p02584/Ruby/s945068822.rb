x, k, d = gets.chomp.split.map(&:to_i)

abs_x = x.abs

a, b = abs_x.divmod(d)

if k < a
  puts x + (-1 * d * k)
else
  if (k - a).odd?
    puts (d - b).abs
  else
    puts b
  end
end
