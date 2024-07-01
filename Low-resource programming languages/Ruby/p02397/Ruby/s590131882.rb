require 'scanf'

while true
	x,y = gets.scanf("%d %d")
	if x == 0 && y == 0
		break
	end

	if x > y
		x,y = y,x
	end

	printf("%d %d\n", x, y)
end