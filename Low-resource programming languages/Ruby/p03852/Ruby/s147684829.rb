array = ["a", "e", "i", "o", "u"]
s = gets.chomp.to_s
if array.include?(s)
  puts "vowel"
else
  puts "consonant"
end
