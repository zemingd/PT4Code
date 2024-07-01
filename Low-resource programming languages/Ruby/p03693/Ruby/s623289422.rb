r, g, b = readlines.map(&:to_i)

if ("#{r}#{g}#{b}".to_i % 4).zero?
  puts 'YES'
else
  puts 'NO'
end