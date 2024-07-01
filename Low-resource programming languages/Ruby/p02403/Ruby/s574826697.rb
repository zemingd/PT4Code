while true
  h,w = gets.chomp.split.map(&:to_i)
  break if h==0 && w==0
  h.times do |i|
    w.times do |j|
      print "#"
    end
    print"\n"
  end
  print "\n"
end