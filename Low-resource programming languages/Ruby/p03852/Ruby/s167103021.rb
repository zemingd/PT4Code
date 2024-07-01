VOWEL = %w(a e i o u)
c = gets.chomp
if VOWEL.include?(c)
  puts 'vowel'
else
  puts 'consonant'
end
