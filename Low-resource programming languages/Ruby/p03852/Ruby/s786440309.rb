s = gets.chomp

if %w[a e i o u].include?(s)
  puts 'vowel'
else
  puts 'consonant'
end
