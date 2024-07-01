n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
flag = true
(n-1).times do |i|
	flag = false if arr[i] > arr[i+1]
end
if flag 
	puts "YES"
	exit
end

min = arr.index(arr.min)
max = arr.index(arr.max)
arr[min], arr[max] = arr[max], arr[min]

(n-1).times do |i|
	if arr[i] > arr[i+1]
		puts "NO"
		exit
	end

end
puts "YES"

