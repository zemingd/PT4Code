# -*- utf8 -*-

arg = gets.chomp

case arg
    when "a", "i", "u", "e", "o"
        puts "vowel"
    else
        puts "consonant"
end