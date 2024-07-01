arr = gets.split.map(&:to_i)
key = 0
i = 1
val = 1
while key == 0 do
	val *= arr[1]
	if arr[0] < val
		key = 1
		p i
	else
		i += 1
	end
end