arr = []
n = gets.chomp.to_i
n.times do
	arr << gets.chomp.to_i
end
if arr.first==2
	a = 1
else
	a = -1
	for i in 1..arr.length-1
		h = arr.first if i==1
		h = arr[h-1]
		if h == 2
			a = i+1; break
		end
  end
end
puts a