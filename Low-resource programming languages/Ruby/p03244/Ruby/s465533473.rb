n = gets.to_i
vs = gets.chomp.split.map(&:to_i)

even = Hash.new(0)
odd = Hash.new(0)
vs.each_with_index do |v,i|
	if i.even?
		even[v] += 1
	else
		odd[v] += 1
	end
end

even = even.sort_by(&:last)
odd = odd.sort_by(&:last)
even_second = even[-2] ? even[-2][1] : 0
odd_second = odd[-2] ? odd[-2][1] : 0
if even[-1][0] == odd[-1][0]
	cnt = n - [even_second + odd[-1][1], even[-1][1] + odd_second].max
else
	cnt = n - even[-1][1] - odd[-1][1]
end

puts cnt