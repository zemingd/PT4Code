inputList = Array.new()
begin
	inputLine = STDIN.gets
	inputList.push(inputLine)
end until inputLine == "0 0\n"

i = 1
while i < inputList.length
	x = Array.new(inputList[i-1].split(" "))
	x[0] = x[0].to_i
	x[1] = x[1].to_i
	x = x.sort
	print x[0], " ", x[1], "\n"
	i += 1
end