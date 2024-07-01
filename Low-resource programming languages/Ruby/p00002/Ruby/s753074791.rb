loop{
	data = gets
	if data == nil
		break
	end
	a,b =data.split(" ").map{|i| i.to_i}
	c= (a+b).to_s.size
	puts c
}