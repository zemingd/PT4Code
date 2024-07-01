# your code goes here
n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort

for i in 0...m do
	as.push (as.pop / 2)
	as.sort!
end
		
puts as.sum