y = 0

datas = $stdin.read.split("\n")

while true
	if datas[0].to_i - datas[1].to_i - datas[2].to_i * y < 0
		y -= 1
		puts datas[0].to_i - datas[1].to_i - datas[2].to_i * y
		break
	end
	y += 1
end