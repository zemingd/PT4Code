def draw_rect(h, w)
  h.times do
    puts "#" * w
  end
end

loop do
  h, w = gets.chomp.split(" ").map(&:to_i)
  if h == 0 && w == 0
    break
  else
    draw_rect(h, w)
    print "\n"
  end
end