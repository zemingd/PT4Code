input = gets.chomp.to_s
if %w[a i u e o].include?(input)
  puts 'vowel'
else
  puts 'consonant'
end
