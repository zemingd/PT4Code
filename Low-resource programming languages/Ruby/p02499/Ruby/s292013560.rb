str = ""
while input = gets
	str += input
end
str.downcase!
array = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
array.each do |i|
	puts "#{i} #{array.count(i)}"
end