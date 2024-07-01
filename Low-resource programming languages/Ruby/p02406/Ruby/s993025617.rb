n = gets.to_i
n.times { |i|
  print " #{i+1}" if (i+1)%3 == 0
  print " #{i+1}" if (i+1)%10 == 3
}
puts