char = gets.chomp
vowel = {
  :a => true,
  :i=> true,
  :u => true,
  :e => true,
  :o => true
 }
if vowel[:"#{char}"] then
  puts "vowel"
else
  puts "consonant"
end