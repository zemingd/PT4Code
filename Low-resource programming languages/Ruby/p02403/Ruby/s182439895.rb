loop do
  h, w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  h.times do
    puts '#' * w
  end
end
