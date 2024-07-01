results=[]
loop{
	data = gets
	if data == nil
		break
	end
	a,b =data.split(" ").map{|i| i.to_i}
	results << (a+b).to_s.size
	puts results
}