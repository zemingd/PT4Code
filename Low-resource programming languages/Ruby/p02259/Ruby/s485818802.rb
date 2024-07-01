n = gets.to_i
arr = gets.split.map(&:to_i)


flag = true
cnt = 0
while flag do
	flag = false
		(n-1).downto(1) do |i|
			if arr[i-1] > arr[i]  
					buf = arr[i]
					arr[i] = arr[i-1]
					arr[i-1] = buf
					cnt += 1
					flag = true
			end
		end
end

puts arr.join(" ")
puts cnt 