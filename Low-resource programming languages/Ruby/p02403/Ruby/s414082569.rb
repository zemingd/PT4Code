while(h, w = gets.chomp.split.map(&:to_i)) != [0, 0]
  h.times{puts "#" * w}
end