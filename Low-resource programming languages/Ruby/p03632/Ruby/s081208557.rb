a, b, c, d = gets.split.map(&:to_i)
if (a..b).to_a.include?(c)
  if b < d
    puts b - c
  else
    puts d - c
  end
else
  puts 0
end
