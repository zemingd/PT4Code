nums = gets.split.map{|num| num.to_i}
a = nums[0]
b = nums[1]
d = a.div(b)
r = (a % b)
f = a.quo(b).to_f
puts "#{d} #{r} #{f}"