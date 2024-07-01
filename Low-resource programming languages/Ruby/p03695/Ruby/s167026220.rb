N = gets.to_i
a = gets.split(" ").map(&:to_i)
b = Array.new(8, false)
freecount = 0
N.times do |i|
	color = a[i] / 400
	if(color < 8)
		b[color] = true
	else
		freecount += 1
	end
end

bnotzero = b.select {|i| i == false}
min = bnotzero.size
c =  8 - min
max = bnotzero.size + freecount

puts "#{min} #{max}"
