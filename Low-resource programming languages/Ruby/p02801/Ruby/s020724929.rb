char = gets.chomp
chars = ("a".."z").to_a
puts chars[chars.find_index(char) + 1]