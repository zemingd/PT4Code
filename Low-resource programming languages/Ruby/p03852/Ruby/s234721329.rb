char = gets.chomp
vowel = [ "a", "i","u","e","o"]
if vowel.include?(char) 
  puts "vowel"
else
  puts "consonant"
end