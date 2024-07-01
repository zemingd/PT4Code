c = gets
vowels = "aiueo"

5.times do |i|
  if c == vowels[i]
    puts "vowel"
    break
  end
  if i == 4
    puts "consonant"
  end
end