t1 = Time.now.to_f

loop do
	a = gets.chomp.split(" ")
	aa = a[0].to_i
	bb = a[1].to_i
	c = aa + bb
	puts c.to_s.length
	t2 = Time.now.to_f - t1
	if t2 >= 0.8
		break
	end
end