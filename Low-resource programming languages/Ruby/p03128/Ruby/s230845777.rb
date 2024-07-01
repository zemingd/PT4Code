CostOf = [0,2,5,5,4,5,6,3,7,6]

N, M   = gets.split.map(&:to_i)
Digits = gets.split.map(&:to_i)

Lowest = Digits.min_by{|d| CostOf[d]*10 - d }
Sorted = Digits.select{|d| Lowest < d }.sort_by{|d| -d } + Digits.select{|d| d < Lowest }.sort_by{|d| -CostOf[d]*10 - d }
FindFirstNums = lambda{|nums, remain|
	return nums if remain == 0
	(nums.empty? ? 0 : Sorted.index(nums.last)).upto(Sorted.length-1){|i|
		d = Sorted[i]
		if CostOf[d] <= remain + CostOf[Lowest]
			nums.push(d)
			return nums if FindFirstNums[nums, remain - CostOf[d] + CostOf[Lowest]]
			nums.pop
		end
	}
	return [] # never
}

nums = FindFirstNums[[], N % CostOf[Lowest]]
puts (nums + [Lowest] * (N / CostOf[Lowest] - nums.length)).sort.reverse.join('')
