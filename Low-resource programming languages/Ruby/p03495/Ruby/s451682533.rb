
_, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

counter = Hash.new(0)
nums.each{|x|
  counter[x] += 1
}

size = counter.size
if size <= k
  p 0
else
  p counter.sort_by{|x| x[1]}.first(size - k).inject(0){|res, x| res + x[1]}
end

