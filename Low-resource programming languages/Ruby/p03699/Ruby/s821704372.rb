points = []
n = 0
sum = 0
cnt = 0
while line = gets
	points[n] = line.to_i
	n += 1
end
points.shift()
points.sort!

points.each{|var|
	sum += var
	#p(var)
}

while true 
	if sum % 10 != 0
		break
	elsif cnt == points.length
		#sum = 0
		break
	else
		sum -= points[cnt]
		cnt += 1
	end
end

p(sum)
