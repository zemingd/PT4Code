while line = gets
  h, w = line.chomp.split(" ").map(&:to_i)
  break if h == 0 && w == 0
  h.times do
    puts '#' * w
  end
  puts "\n"
end