button = $stdin.read.split("\n")
button.map! do |element|
	element.to_i
end
button.shift()
#p button
#p button.size
current = 1
cnt = 0 
while true
	if current == 2
		print("#{cnt}\n")
		break
	elsif cnt >= button.size
		print("-1\n")
		break
	end
	cnt += 1
	current = button[current-1]
end

