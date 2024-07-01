while true
  h,w = gets.split.map{|ngo|ngo.to_i}
  break if h == 0 and w == 0
  h.times do
    w.times do
      print("#")
    end
    print("\n")
  end
  print("\n")
end
