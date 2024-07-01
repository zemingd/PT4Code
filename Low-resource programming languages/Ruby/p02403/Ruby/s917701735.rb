h,w = gets.split.map {|n| n.to_i}
unless h == 0 && w == 0
  for i in 1..h
    for j in 1..w
      print "."
    end
    print "\n"
  end
  print "\n"
  h,w = gets.split.map {|n| n.to_i}
end