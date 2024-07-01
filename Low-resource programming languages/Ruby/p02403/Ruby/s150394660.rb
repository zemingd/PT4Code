loop do
  h, w = gets.split.map!(&:to_i)
  break if h == 0 || w == 0
  h.times do |i|
    h += 1 
    w.times do |j|
       j += 1 
      print "#"
      if w == j
        puts ""
      end
    end
    if h == i
      puts ""
    end
  end
end