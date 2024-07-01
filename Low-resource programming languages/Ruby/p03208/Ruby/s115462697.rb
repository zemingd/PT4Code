n,k=gets.split.map(&:to_i)
nums=Array.new(n)

for i in 0..n-1 do
    nums[i]=gets.to_i
end

nums=nums.sort
ans=1e9
for i in 0..(n-k) do
    tmp=nums[i+k-1]-nums[i]
    ans=[ans,tmp].min
end

puts ans