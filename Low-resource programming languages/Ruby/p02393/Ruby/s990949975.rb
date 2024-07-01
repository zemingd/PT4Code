numbers = gets.chomp.split(" ").map(&:to_i)
numbers.sort.each {|i|
  print i.to_s+' '
}
puts