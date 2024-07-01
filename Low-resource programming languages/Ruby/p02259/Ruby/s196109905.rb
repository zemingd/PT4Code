$swap = 0

def Swap(a, b)
	$swap += 1
	return b,a
end

gets
d = gets.chomp.split(" ").map &:to_i

(d.length-1).times { |i|
	(d.length-1).step(i+1, -1) { |j|
		d[j],d[j-1] = Swap(d[j],d[j-1]) if d[j-1] > d[j]
	}
}

d.length.times { |i|
	print " " unless i == 0
	print "#{d[i]}"
}
print "\n#{$swap}\n"