CostOf = [0,2,5,5,4,5,6,3,7,6]
N, M   = gets.split.map(&:to_i)
Digits = gets.split.map(&:to_i)

Lowest = Digits.min_by{|d| CostOf[d]*10 - d }
Selected = Digits.select{|d| CostOf[d] != CostOf[Lowest] }.sort.reverse
FindBestNums = lambda{|remain|
	BestOf = lambda{|a, b|
		a_ = [Lowest] * [b.size - a.size, 0].max + a
		b_ = [Lowest] * [a.size - b.size, 0].max + b
		return a_.sort.reverse.join('').to_i < b_.sort.reverse.join('').to_i ? b : a
	}
	best = [0]
	FindNextNums = lambda{|remain, nums|
		return nil  if remain <  0
		return nums if remain == 0
		(nums.empty? ? 0 : Selected.index(nums.last)).upto(Selected.length-1){|i|
			d = Selected[i]
			nums.push(d)
			best = BestOf[best, nums.dup] if FindNextNums[remain - CostOf[d] + CostOf[Lowest], nums]
			nums.pop
		}
		return nil
	}
	FindNextNums[remain, []]
	return best
}

nums = FindBestNums[N % CostOf[Lowest]]
puts (nums + [Lowest] * (N / CostOf[Lowest] - nums.length)).sort.reverse.join('')
