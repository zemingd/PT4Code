n=gets.to_i
monsters=gets.split.map(&:to_i)
monsters.sort!
min=monsters[0]
def unchi(monsters,min)
	for i in 1..monsters.count - 1
		monsters[i]= monsters[i] % min
	end
	monsters.delete(0)
	monsters.sort!
	min=monsters[0]
	return [monsters,min]
end
while monsters.count > 1
	monsters,min = unchi(monsters,min)
end
puts monsters