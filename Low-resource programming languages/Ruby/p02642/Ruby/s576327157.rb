gets
a = gets.split.map(&:to_i).sort
i = 0
a.each_index{|i|
	if a[i] == nil
		next
	end
	n = a[i]
	if a[i + 1] == a[i]
		a[i] = nil
	end
	(i + 1).upto(a.size - 1){|j|
		if a[j] == nil
			next
		end
		if a[j] % n == 0
			a[j] = nil
		end
	}
}
puts a.count{|i| i != nil}