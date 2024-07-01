n = gets.to_i
arr = []
n.times do 
 arr << gets.to_i
end
index = 1
count = 0
while index!=2 do
	index=arr[index-1]
	count+=1
	if count>=n
		count=-1
		break
    end
end

puts count
