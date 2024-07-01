alphabets = ("a".."z").to_a
input = gets.chomp

next_index = alphabets.find_index(input) + 1

puts alphabets[next_index]
