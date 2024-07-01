N = gets.to_i
a = gets.split(" ").map(&:to_i)
b = Array.new(8, 0)
freecount = 0
N.times do |i|
	if(a[i] / 400 < 8)
		b[a[i] / 400] += 1
	else
		freecount += 1
	end
end

bnotzero = b.select {|i| i != 0}
min = bnotzero.size
c =  8 - min
max = (c >= freecount) ? min + freecount : min + c

puts "#{min} #{max}"
