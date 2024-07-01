n = gets.chomp.to_i
s = gets.chomp

alphabets = ('A'..'Z').to_a
result = s.chars.map { |c| alphabets[(alphabets.index(c) + n) % 26] }.join

puts result
