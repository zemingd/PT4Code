n=gets.to_i
nums=gets.split.map(&:to_i)

mn=1e12
l=0
r=0

nums.each do |i|
    r+=i
end

for i in 0..(n-2) do
    l+=nums[i]
    r-=nums[i]
    dif = (l-r).abs
    mn = [mn,dif].min
end

puts mn