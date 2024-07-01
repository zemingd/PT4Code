loop do
  h, w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  line = '#' * w + "\n"
  puts line * h + "\n"
end