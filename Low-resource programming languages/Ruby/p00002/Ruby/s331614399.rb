loop{
	data = gets
	if data == nil then
		break
	end
	data = data.split(nil)
	result = data[0].to_i + data[1].to_i
	puts result.to_s.length
}