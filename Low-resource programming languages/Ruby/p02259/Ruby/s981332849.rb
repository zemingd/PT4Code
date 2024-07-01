n = gets.to_i
arr = gets.split(" ").map(&:to_i)


flag = 1
cnt = 0
while flag
	flag = 0
		(n-1).downto(1){|j|
			if arr[j-1] > arr[j]  
					buf = arr[j]
					arr[j] = arr[j-1]
					arr[j-1] = buf
					cnt += 1
					flag = 1
			end
		}
end

puts arr.join(" ")
puts cnt 