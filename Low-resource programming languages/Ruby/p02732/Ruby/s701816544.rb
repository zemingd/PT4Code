n = gets.to_i

a = gets.split(' ').map(&:to_i)

b = Hash.new(0)
sum = Hash.new(0)

a.each do |i|
 b[i] += 1 
end

b.each_key do |k|
 sum[k] = b[k]*(b[k]-1)/ 2
end

total = 0
sum.each_key do |k|
 total += sum[k] 
end

a.each do |k|
 cnt = b[k]
 if cnt > 1
  puts total - sum[k] + (cnt-1)*(cnt-2)/2  
 else
  puts total
 end
end