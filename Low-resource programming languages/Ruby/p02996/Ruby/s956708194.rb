n = gets.chomp.to_i
arr = Array.new(n)
n.times do |i|
	arr[i] = gets.chomp.split.map(&:to_i)
end

arr = arr.sort{|a,b| a[1] <=> b[1]}

elapsed = 0

n.times do |i|
	elapsed += arr[i][0]
	if elapsed > arr[i][1]
		puts "No"
		exit
	end
end
puts "Yes"

