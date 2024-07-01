VOWEL = %w(a b c d e)
c = gets.chomp
if VOWEL.include?(c)
  puts 'vowel'
else
  puts 'consonant'
end
