n= gets.strip.to_i

arr=[]
(1..n).each do |i|
	arr << gets.strip
end

if arr.uniq.size!=arr.size
	puts 'No'
	exit
end

s=arr[0][0]
arr.each do |a|
	if s!=a[0] 
		puts 'No'
		exit
	end
	s=a[a.size-1]
end

puts 'Yes'

