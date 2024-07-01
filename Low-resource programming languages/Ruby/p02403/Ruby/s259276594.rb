loop do
  h, w = gets.split.map(&:to_i)
  if h == 0 && w == 0
    break
  end
  h.times do
    w.times do
      print "#"
    end
    print "\n"
  end
  puts " "
end

