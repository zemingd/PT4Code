str = ""
while input = gets
	str += input
end
str.downcase!.strip!.split("")
array = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
array.each do |i|
	puts "#{array[i]} #{array.count(array[i])}"
end