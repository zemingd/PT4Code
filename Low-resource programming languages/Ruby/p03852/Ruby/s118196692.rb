Vowel = ['a', 'e', 'i', 'o', 'u']
c = STDIN.gets.chomp

if Vowel.include?(c) then
  STDOUT.puts 'vowel'
else
  STDOUT.puts 'consonant'
end