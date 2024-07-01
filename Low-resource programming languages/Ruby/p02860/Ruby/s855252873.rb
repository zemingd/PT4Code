n = gets.chomp.to_i
s = gets.chomp

puts (s[0...(n.length / 2)] == s[(n.length / 2)...n] ? 'Yes' : 'No')