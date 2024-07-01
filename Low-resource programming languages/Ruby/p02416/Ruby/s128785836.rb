loop do
  str = gets.chomp
  break if str == '0'
  p str.chars.map(&:to_i).inject(:+)
end