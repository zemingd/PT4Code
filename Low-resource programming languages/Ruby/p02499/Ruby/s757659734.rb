s = ""
while input = gets do
	s += input
end
s.downcase!
array = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
array.each do |c|
	puts "#{c} : #{s.count(c)}"
end