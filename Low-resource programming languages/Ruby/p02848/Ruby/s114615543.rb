n = gets.to_i
s = gets.chomp

alphabets = []
('A'..'Z').each do |alphabet|
  alphabets << alphabet
end

str = []
s.length.times do |i|
  index = alphabets.index(s[i]) + n
  index -= 26 if index >= 26
  str << alphabets[index]
end

puts str.join