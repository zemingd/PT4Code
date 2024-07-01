h, w = gets.split.map(&:to_i)

if h > 1 && w > 1
  puts((h * w + 1) / 2)
else
  puts 1
end
