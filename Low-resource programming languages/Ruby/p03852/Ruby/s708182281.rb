input = gets.chomp
if %w[a e i o u].include?(input)
  puts 'vowel'
else
  puts 'consonant'
end