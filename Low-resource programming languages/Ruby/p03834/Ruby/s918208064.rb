list = gets.chomp.split(' ')
k = list[0].to_i
s = list[1].to_i


count = 0
for l in 0..k do
    x = l
  	if x > s then
      break
    end
 
	for m in 0..k do
  		y = m
    	subsum = x + y
    	z = s - subsum
    	if subsum > s then
      		break
    	end
    	if z >= 0 && z <= k then
      		count += 1
    	end
  	end
end
p count