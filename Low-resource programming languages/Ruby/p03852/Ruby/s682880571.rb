string = gets.chomp!.to_s
case string
when 'a','i','u','e','o'
  puts 'vowel'
else
  puts 'consonant'
end