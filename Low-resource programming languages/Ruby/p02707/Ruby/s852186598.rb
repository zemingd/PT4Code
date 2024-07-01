num = gets.strip.to_i
a=Array.new(num,0)
maneger_nums = gets.strip.split(" ").map do |i|
  i.to_i
end
(num-1).times do |i|
  a[maneger_nums[i]-1]+=1
end

num.times do |i|
  puts a[i]
end
