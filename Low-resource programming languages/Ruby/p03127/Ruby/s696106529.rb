n = gets.chomp!.to_i
as = gets.chomp!.split(" ")
as = as.map{|item| item = item.to_i}
as = as.sort
ans = 0

for i in 0..n-1
	ans = as[i].gcd[ans]
end

puts ans