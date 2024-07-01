n, m = gets.split.map(&:to_i)
r = Array.new(0)
sum = 1
a = Array.new(0)
b = Array.new(0)
m.times do |i|
	a, b = gets.split.map(&:to_i)
	r[i] = [a,b]
end

r.sort!.reverse!

k = 0
count = 0

r.each do |i|
	if r[k][0] >= i[1]
		sum += 1
		k = count
	else
		count += 1
	end
	
end

puts sum



