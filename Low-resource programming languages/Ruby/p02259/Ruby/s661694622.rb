
N = gets.to_i
a = gets.split.map(&:to_i)
count=0
	flag = true
	while flag
		flag = false
		(N-1).downto(1) do |j|
			if a[j] < a[j-1]
				tmp = a[j]
				a[j] = a[j-1]
				a[j-1] = tmp
				flag = true
				count+=1
			end

		end
	end

	N.times do |i|
		print("#{a[i]}")
		if(i<N-1)
			print(" ")
		end
	end
	print("\n")
	print count