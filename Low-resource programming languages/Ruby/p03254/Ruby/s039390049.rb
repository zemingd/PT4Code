n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
count = 0
a.each do |i|
	if x < i
		puts count
		exit
	end
	x -= i
	count += 1
end

puts n