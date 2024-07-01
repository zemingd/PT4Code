

n = gets.to_i
list = []

n.times do
	command,key = gets.split
	if command.to_s == "insert"
		list << key
	elsif command.to_s == "delete"
		list.delete(key)
	elsif command.to_s == "deleteFirst"
		list.pop
	else
		list.shift
	end
end
ans = ""
while !list.empty?
	ans += list.pop.to_s
	if !list.empty?
		ans += " "
	end
end

puts ans