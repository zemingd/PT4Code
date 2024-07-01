n = gets.to_i
nums = gets.split.map(&:to_i)

min = nil

nums.min.upto(nums.max) do |point|
  sum = 0
  nums.each do |num|
    sum += (point - num) ** 2
  end

  if min
	min = [min, sum].min
  else
    min = sum
  end
end
  
puts min

