h, w = gets.split.map(&:to_i)
w += 1
s = $<.map(&:bytes)
a = Array.new(h+2) { Array.new(w+2,0) }
hh=Array.new(w+2) { Array.new }

h.times do |i|
	l = 0
	w.times.select { |j| s[i][j] != 46 }.each do |r|
		hh[r] << i
		l.upto(r-1) { |j| a[i][j] = r-l }
		l = r + 1 
	end
end
w.times { |k| hh[k] << h }


hh.each_with_index do |x,i|
	u = 0
	x.each do |d| 
		u.upto(d-1) { |j| a[j][i] += d-u }
		u = d + 1 
	end
end

p a.map(&:max).push(1).max-1
