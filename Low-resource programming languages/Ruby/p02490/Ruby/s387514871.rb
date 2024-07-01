loop{
	dataset = gets()
	if dataset.chop != "0 0"	then
		strAry = dataset.split(" ")
		strAry.sort!
		puts strAry[0]+" "+strAry[1]
	else
		exit
	end
}