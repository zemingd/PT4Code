$<.each do |l|
  x, y = l.split.map(&:to_i)
  break if x == 0 && y == 0

  puts [x, y].sort.join(" ")
end