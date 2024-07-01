n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

cnt = 0
flg = 1
while flg == 1
	flg = 0
	(1..n-1).reverse_each do |j|
		if a[j] < a[j-1]
			a[j],a[j-1] = a[j-1],a[j]
			flg = 1
			cnt+=1
		end
	end
end

puts a.join(" ")
puts cnt