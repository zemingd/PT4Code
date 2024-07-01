loop do
  x = gets.chomp
  break if x == "0"
  puts x.chars.map(&:to_i).inject(&:+)
end
