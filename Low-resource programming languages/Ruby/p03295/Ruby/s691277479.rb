n, m = gets.split.map(&:to_i)
r = Array.new(0)
sum = 0
a = Array.new(0)
b = Array.new(0)
m.times do |i|
	a, b = gets.split.map(&:to_i)
	r[i] = [a,b]
end

r.sort!.reverse!

m.times do |i|

	sum += 1

	j = 0
	k = r[0][0]
	r.delete_at(0)


	if r.empty?
		puts sum
		exit
	end


	while j <= r.length()-1
		
		if k < r[j][1]
			r.delete_at(j)
			j -= 1
		end
		if r.empty?
			puts sum
			exit
		end
		j += 1
	end
end


