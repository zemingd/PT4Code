arr_1 = gets.split.map(&:to_i) 
arr_2 = gets.split.map(&:to_i) 
arr_3 = gets.split.map(&:to_i) 

a1, a2, a3 = 0, 0, 0

while a1 <= arr_1[0]
	b1 = arr_1[0] - a1
	while a2 <= arr_1[1]
		b2 = arr_2[1] - a2
		if a1 + b2 == arr_2[0] && a2 + b1 == arr_1[1]
			while a3 <= arr_1[2]
				b3 = arr_3[2] - a3
				if a1 + b3 == arr_3[0] && a3 + b1 == arr_1[2] && a2 + b3 == arr_3[1] && a3 + b2 == arr_2[2]
					print("Yes\n")
					exit
				end
				a3 += 1
			end
		end
		a3 = 0
		a2 += 1
	end
	a2 = 0
	a1 += 1
end

print("No\n")