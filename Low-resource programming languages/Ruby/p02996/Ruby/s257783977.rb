n = gets.to_i

arr = []
n.times do
	arr << gets.split.map(&:to_i)
end

arr.sort_by!{|n|n[1]}
flag = true
arr.inject(0) do |sum,a|
	flag = false if (sum + a[0]) > a[1]
	sum + a[0]
end

puts flag ? "Yes" : "No"