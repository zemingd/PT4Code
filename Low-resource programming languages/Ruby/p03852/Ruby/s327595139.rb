str = gets.chomp

vowel = ["a","e","i","o","u"]
result = "consonant"

if vowel.any? {|x| str == x }
    result = "vowel"
end

puts result