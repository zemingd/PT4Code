c = gets.strip
vowels = "aiueo"
flag = false
 
5.times do |i|
  if c == vowels[i]
    puts "vowel"
    flag = true
    break
  end
end
 
unless flag
  puts "consonant"
end