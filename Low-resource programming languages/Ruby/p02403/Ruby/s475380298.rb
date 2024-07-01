loop do
  h,w = gets.split.map &:to_i
  break if h==0 and w==0
  h.times do
    puts "#"*w
  end
  puts
end
