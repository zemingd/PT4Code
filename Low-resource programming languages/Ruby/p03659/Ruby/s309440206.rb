n = gets
arr = gets.chomp.split(' ').map(&:to_i)
if arr.length==2
	a = (arr.first-arr.last).abs
else
	last = arr.length-1
	a = 0
	b = 0
	arr.each_with_index do |n,i|
		left = 0
		right = 0
		for h in 0..i
			left += arr[h]
		end
		for h in (i+1)..last
			right += arr[h]
		end
		a = (left-right).abs and next if i==0
		b = (left-right).abs
		if a>b
			a = b
		else
			break if arr.any?.with_index(i+1){|n| n<0}
		end
	end
end
puts a