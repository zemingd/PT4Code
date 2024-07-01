loop do
  h, w = gets.split.map!(&:to_i)
  break if h == 0 || w == 0
  h.times do |i|
    i += 1 
    puts "#" * w
    if h == i then puts "" end
  end
end