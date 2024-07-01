arr = Array[]
size = gets.chomp.to_i

i = 0
while i < size
	command, number = gets.chomp.split(' ')
	if command == "insert"
		arr.push(number)
	elsif command == "delete"
		arr.select!{|x| x != number}
	elsif command == "deleteFirst"
		arr.shift
	elsif command == "deleteLast"
		arr.pop
	end
#	p arr
	i = i + 1
end

puts arr.reverse.join(" ")