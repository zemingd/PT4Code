a,b = gets.chomp.split(" ")
balls = gets.chomp.split(" ").map(&:to_i)

if gets.chomp == a
	balls[0] -= 1
else
	balls[1] -= 1
end

print balls[0]," ",balls[1]