
h, w = gets.split.map(&:to_i)

def adelete(a, h, w)
	h.times do |i|
		count = 0
		w.times do |j|
			count += 1 if a[i][j] == "." || a[i][j] == "?"
		end

		if count == w
			w.times do |j|
				a[i][j] = '?'
			end
		end
	end
end





a = Array.new(h)
h.times do |i|
	a[i] = gets.chomp.split('')
end


adelete(a, h, w)
a = a.transpose.reverse
adelete(a, w, h)
a = a.transpose.map(&:reverse)


a.size.times do |i|
	count = 0
	a[i].size.times do |j|
		if a[i][j] !='?'
			print a[i][j]
		else
			count += 1
		end
	end
	if count != a[i].size
		puts
	end
end


