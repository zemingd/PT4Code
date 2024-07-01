n = gets.chomp!.to_i
as = gets.chomp!.split(" ")
as = as.map{|item| item = item.to_i}
 
ans = -Float::INFINITY
 
as.combination(n-1){|arr| 
	alans = arr[0]
	for i in 1..n-2
		alans = alans.gcd(arr[i])
	end
		
	if ans <= alans then
	ans = alans
	end
}
 
puts ans