x = STDIN.gets.chomp

vowel = ['a', 'e', 'i', 'o', 'u']

if vowel.include?(x)
  puts 'vowel'
else
  puts 'consonant'
end

