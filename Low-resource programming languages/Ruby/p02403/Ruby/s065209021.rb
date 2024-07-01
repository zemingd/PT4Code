loop do
  line = gets.chomp.split
  h = line[0].to_i
  w = line[1].to_i

  break if h == 0 && w == 0

  h.times do
    puts '#'*w
  end

  puts
end