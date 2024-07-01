loop do
  x = gets.chomp
  break if x == ?0
  p x.each_char.inject(0) {|r, c| r + c.to_i }
end