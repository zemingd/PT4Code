n = gets.to_i
vs = gets.chomp.split.map(&:to_i)
cnt = 0
even = Hash.new(0)
odd = Hash.new(0)
vs.each_with_index do |v,i|
	i += 1
	if i.even?
		even[v] += 1
	else
		odd[v] += 1
	end
end

even = even.sort_by(&:last)
odd = odd.sort_by(&:last)
if even[-1][0] == odd[-1][0]
	if odd.size == 1 && even.size == 1
		cnt += n/2
	elsif odd.size == 1
		cnt += n/2 - even[-2][1]
	elsif even.size == 1
		cnt += n/2 + n%2 - odd[-2][1]
	else
		if even[-1][1] > odd[-1][1]
			cnt += n - even[-1][1] - odd[-2][1]
		else
			cnt += n - even[-2][1] - odd[-1][1]
		end
	end
else
	cnt += n - even[-1][1] - odd[-1][1]
end

puts cnt