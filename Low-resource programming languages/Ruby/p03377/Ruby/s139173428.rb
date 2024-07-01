a, b, x = $stdin.gets.split.map(&:to_i)


if a + b >= x && a <= x
  puts 'YES'
else
  puts 'NO'
end

