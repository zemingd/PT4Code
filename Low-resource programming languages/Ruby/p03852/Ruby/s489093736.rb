input = gets.chomp.to_s
return 'vowel' if %w[a i u e o].include?(input)
'consonant'