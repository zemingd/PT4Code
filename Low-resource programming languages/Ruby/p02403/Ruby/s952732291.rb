while (n = gets.split.map(&:to_i))
  h, w = n
  break if h == 0 && w == 0
  h.times do
    puts "#"*w
  end
  puts
end