def main

a,b,c = gets.split(" ").map(&:to_i)
 
x = c - a - b
 
if x > 0
 
	y = x*x - 4*a*b
 
	if y > 0
		puts "Yes"
	else
		puts "No"
	end
else
puts "No"
end
end

main