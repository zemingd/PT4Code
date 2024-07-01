n = gets.to_i
s = gets.chomp

alphabets = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

new_string =
  s.chars.map do |char|
    new_index = alphabets.find_index(char) + n
    new_index -= 26 if new_index > 25
    alphabets[new_index]
  end

puts new_string.join