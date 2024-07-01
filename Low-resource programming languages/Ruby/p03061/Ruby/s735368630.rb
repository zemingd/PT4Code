n = gets.chomp!.to_i
as = gets.chomp!.split(" ")
as = as.map{|item| item = item.to_i}

ans = -Float::INFINITY

for kosu in 0..n-1
	as.combination(n-2){|arr| 
		alans = arr[0].gcd(arr[1])
		for i in 2..n-3
			alans = alans.gcd(arr[i])
		end
		
		if ans <= alans then
		ans = alans
		end
	}
end

puts ans