n = gets.chomp!.to_i
as = gets.chomp!.split(" ")
as = as.map{|item| item = item.to_i}

hu = as.count{|item| item<0 } % 2
as.map!{|item| item = item.abs}
as.sort!
if hu == 1
	as[0] = 0-as[0]
end

ans = 0

for j in 0..n-1
	ans = ans+as[j]
end

puts ans