ts = 6.times.map { gets.to_f }
n = ts.shift

ts = [(10**15).to_f, ts].flatten
m = 4

5.times do |i|
	if ts[i] >= ts[i+1]
		dur = (n/ts[i+1]).ceil
		m += dur
		n -= ts[i+1]*dur
	end
end

puts m
