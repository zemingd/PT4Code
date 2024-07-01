c = gets
vowels = "aiueo"
flag = true

5.times do |i|
  if c == vowels[i]
    puts "vowel"
    flag = false
    break
  end
end

unless flag
  puts "consonant"
end