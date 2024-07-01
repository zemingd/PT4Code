n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
count = 0
a.each do |i|
	if 0 <= x && x < i
		puts count
		exit
	end
	x -= i
	count += 1
end
if 0 < x
	puts n-1
	exit
elsif 0 == x
	puts n
	exit
end