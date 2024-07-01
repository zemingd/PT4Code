loop do
  x = gets.chomp
  break if x == "0"
  puts x.split("").inject(0){|sum, c| sum + c.to_i}
end