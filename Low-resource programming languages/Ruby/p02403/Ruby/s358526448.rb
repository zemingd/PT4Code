def toi(a)
	b = []
	a.each do |n|
		b << n.to_i
	end
	b	
end


while true
a = toi(gets().split)
h = a[0]
w = a[1]

if h == 0 && w == 0
 break
end

for n in 1 .. h
	w.times do
		print("#")
	end
	puts "\n"
end
puts "\n"

end