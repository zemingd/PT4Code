while data = gets
	if data == nil then
		break
	end
	a = data.split(nil)
	puts (a[0].to_i+a[1].to_i).to_s.length
end