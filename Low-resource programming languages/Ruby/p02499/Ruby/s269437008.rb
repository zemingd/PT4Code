str = ""
while input = gets
	str += input
end
str.downcase!.stlip!.split("")
array = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
count = Array.new(28, 0)
for i in 0...(str.length)
	for k in 0...26
		if str[i] == array[k]
			count[k] += 1
			break
		end
	end
end
for i in 0...26
	puts "#{array[i]} : #{count[i]}"
end