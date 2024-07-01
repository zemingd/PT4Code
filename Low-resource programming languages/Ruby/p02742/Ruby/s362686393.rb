h, w = gets.split.map(&:to_i)
if h <= 1 || w <= 1
  puts 0
else
  puts (h * w) / 2 + (h * w) % 2
end