loop {
  x = gets.chomp
  break if x == "0"
  puts x.split("").map(&:to_i).map { |element| element.+= }
}
