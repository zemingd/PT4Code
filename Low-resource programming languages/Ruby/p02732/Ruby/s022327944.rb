n = gets.to_i

a = gets.split(' ').map(&:to_i)

b = Hash.new(0)

a.each do |i|
 b[i] += 1 
end

total = 0
b.each_key do |k|
 total += b[k]*(b[k]-1)/ 2
end

a.each do |k| 
 puts total - b[k] + 1
end