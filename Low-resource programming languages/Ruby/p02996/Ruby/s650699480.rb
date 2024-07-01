i = gets.to_i
list =[]
i.times do
	list << gets.split.map(&:to_i)
end
p list
p list.sort.reverse
sum = 0
num = 0
list.each do |v|
	sum += v[0]
	if num < v[1]
		num += v[1]
	end
end

if sum > num
	puts "No"
else
	puts "Yes"
end
