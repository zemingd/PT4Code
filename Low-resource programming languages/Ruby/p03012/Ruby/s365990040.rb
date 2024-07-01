num = gets.to_i
val = gets.split.map(&:to_i)
# p val.count
sum = 0
val.each do |v|
    sum += v
end
# p sum
mini = sum
prefix_sum = 0
aa = []
val.each do |i|
    prefix_sum += i
    # mini = (mini, (prefix_sum - (sum - prefix_sum)).abs).min
    aa.push((prefix_sum - (sum - prefix_sum)).abs)
    # p mini
end
p aa.push(mini).min

# p val
# p val.reverse