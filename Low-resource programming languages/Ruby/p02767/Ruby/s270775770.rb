n = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
ans = nums.inject(0){|sum,num|sum+num**2} - ((nums.inject(0){|sum,num|sum+num})**2)/n.to_f
puts ans.floor