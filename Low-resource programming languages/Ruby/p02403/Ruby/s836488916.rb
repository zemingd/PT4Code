while true
  h, w = gets.split.map(&:to_i)
  break if [h, w] == [0, 0]
  h.times do
    w.times do
      print "#"
    end
    print "\n"
  end
end