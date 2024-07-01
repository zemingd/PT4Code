S = gets.chomp

stack = []

ans = 0

for cube in S.chars do
	if stack.size == 0 || stack.last == cube then
		stack.push(cube)
	else
		ans += 2
		stack.pop
	end
end

p ans
