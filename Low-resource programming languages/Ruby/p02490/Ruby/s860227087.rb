loop{
	dataset = gets()
	strAry = dataset.split(" ")
	if strAry[0] != "0" || strAry[1] != "0" then
		strAry.sort!
		puts strAry[0]+" "+strAry[1]
	else
		exit
	end
}