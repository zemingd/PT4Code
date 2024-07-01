input = gets.chomp
list = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
_index = list.index(input)
index = _index + 1
puts list[index]