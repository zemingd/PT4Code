n = gets.to_i
a = gets.split.map {|i| i.to_i}

flag = true
cnt = 0
while flag
	flag = false
	(n-1).downto(1) do |j|
		if a[j] < a[j-1]
			a[j], a[j-1] = a[j-1], a[j]
			flag = true
			cnt += 1
		end
	end
end

puts a.join(" ")
puts cnt