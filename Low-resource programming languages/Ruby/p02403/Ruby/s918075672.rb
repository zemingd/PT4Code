ARGF.each_line do |line|
  h, w = line.split.map(&:to_i)
  h.times do |i|
    w.times do |j|
      print "#"
    end
    print "\n"
  end
  print "\n"
end