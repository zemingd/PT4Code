list = []

gets.to_i.times do
	com = gets.chomp.split

	if com[0] == "deleteFirst"
		list.shift
	elsif com[0] == "deleteLast"
		list.pop
	elsif com[0] == "insert"
		list.unshift(com[1].to_i)
	else
		idx = list.index(com[1].to_i)
		list.delete_at(idx) if idx != nil
	end
end

puts list.join(" ")

