N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
HH = Hash.new(0)

A.each do |a|
    HH[a] += 1
end

nums = HH.values.sort
sum = 0
while nums.size > K
    sum += nums.shift
end
puts sum