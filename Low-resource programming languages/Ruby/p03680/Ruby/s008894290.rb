n = gets.to_i
button = []
result = 0
possible = false
n.times do
	button.push(gets.to_i)
end

flag = button[0]
button.length.times do
	result += 1
	if flag == 2
		possible = true
		break
	end
	flag = button[flag-1]
end

if possible
	puts result
else
	puts -1
end
