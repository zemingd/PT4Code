result = 0
datas = $stdin.read.split("\n")
for i in 0..datas[0].to_i do
	for j in 0..datas[1].to_i do
		for k in 0..datas[2].to_i do
			if datas[3].to_i == i * 500 + j * 100 + k * 50 then
				result += 1
			end
		end
	end
end
puts result