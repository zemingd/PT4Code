while x = gets.chomp
  break if x == "0"
  sum = 0
  x.split("").map{|a|sum += a.to_i}
  puts sum
end