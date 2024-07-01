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

k = r[0][0]

r.each do |i, j|
	if k >= j
		sum += 1
		k = i	
	end
end

puts sum



