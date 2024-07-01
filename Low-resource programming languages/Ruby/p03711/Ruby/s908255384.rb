a = [1,3,5,7,8,10,12]; b = [4,6,9,11]; c = [2]
x, y = gets.split.map &:to_i
if a.any? { |e| e == x } && a.any? {|e| e == y}
	puts "Yes"
elsif b.any? {|e| e == x} && b.any? {|e| e == y}
	puts "Yes"
elsif x == c[0] && y == c[0]
	puts "Yes"
else
	puts "No"
end
