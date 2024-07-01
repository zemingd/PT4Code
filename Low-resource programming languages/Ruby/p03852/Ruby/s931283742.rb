c = gets.chomp

if (['a', 'e', 'i', 'u', 'o'].find_index { |char| char == c })
  puts 'vowel'
else
  puts 'consonant'
end