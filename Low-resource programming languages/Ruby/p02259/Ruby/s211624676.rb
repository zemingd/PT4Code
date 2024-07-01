i = gets(chomp:true).to_i
array = gets.split.map(&:to_i)
n = 0
for j in 0...i
k = i - 1
l = i - 2
while l >= j 
if array[l] > array[k]
m = array[k]
array[k] = array[l]
array[l] = m
n += 1
end
l -= 1
k -= 1
end
end
puts array.join(" ")
puts n
