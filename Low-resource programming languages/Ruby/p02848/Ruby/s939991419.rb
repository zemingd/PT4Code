num = gets.to_i
str = gets.chomp
l = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z".split
answer = ""
str.each do |letter|
  answer += l[(l.index(letter) + num)/l.length]
end
puts answer