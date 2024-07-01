n=gets.to_i
n.times{
	point=gets.split(" ").map{|f| f.to_f}
	if(point[2]==point[0]||point[6]==point[4]) then
		if(point[2]==point[0]&&point[6]==point[4]) then
			puts "YES"
		else puts "NO"
		end
	elsif((point[3]-point[1])/(point[2]-point[0])==(point[7]-point[5])/(point[6]-point[4])) then
		puts "YES"
	else puts "NO"
	end
}
