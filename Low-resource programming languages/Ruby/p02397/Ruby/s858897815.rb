loop do
  x = gets.split(" ").map{|s| s.to_i}
  break if x[0] + x[1] == 0
  puts x.sort.join(" ")
end
