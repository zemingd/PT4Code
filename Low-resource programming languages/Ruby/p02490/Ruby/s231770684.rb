loop{
	dataset = gets()
	strAry = dataset.split(" ")
	if strAry[0] != "0" || strAry[1] != "0" then
		if strAry[0].to_i > strAry[1].to_i then 
			puts strAry[1]+" "+strAry[0]
		else
			puts strAry[0]+" "+strAry[1]
		end
	else
		exit
	end
}