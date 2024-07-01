loop do
  n = gets.chomp
  break if n == '0'
  puts n.chars.map(&:to_i).reduce(:+)
end