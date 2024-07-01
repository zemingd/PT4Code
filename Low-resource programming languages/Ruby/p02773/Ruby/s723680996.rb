n = gets.chomp.to_i
data = {}
n.times do
	s = gets.chomp
	if data.key?(s) then
		data[s] += 1
	else
		data[s] = 1
	end
end
print("\n")

data = data.sort
data = data.sort_by{ |_, v| -v }

max = data[0][1]

for i in data do
	if i[1]==max then
		print(i[0])
		print("\n")
	else
		break
	end
end