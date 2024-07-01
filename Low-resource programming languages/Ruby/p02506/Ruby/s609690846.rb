count = 0

w = gets.chomp.downcase
loop do
  s = gets.chomp
  break if s == "END_OF_TEXT"
  words = s.split
  count += words.count { |word| word.downcase == w }
end

puts count