n = gets.to_i
a = gets.split.map(&:to_i)
flag = 1
sum = 0
while flag==1 do
	flag = 0
	(n-1).downto(1) do |j|
		if a[j]<a[j-1] then
			v = a[j]
			a[j] = a[j-1]
			a[j-1] = v
			sum += 1
			flag = 1
		end
	end
end

puts a.join(' ')
puts sum
