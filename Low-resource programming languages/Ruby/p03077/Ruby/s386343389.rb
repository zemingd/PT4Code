n = gets.chop.to_i
nums = []
5.times do |_i|
  nums << gets.chop.to_i
end

nums_min = nums.min

if nums_min > n
    p 5
else
    p 5 + (n / nums_min.to_f).ceil - 1
end
