while (x = gets.split(" ").map{|i|i.to_i}) != [0, 0]
  puts x.sort.join(" ")
end