n = gets.chomp.to_i
pp = gets.chomp.split().map(&:to_i)
q  = gets.chomp.split().map(&:to_i)
nums = [1,2,3,4,5,6,7,8]
num_array = nums.slice(0,n)
pattern = 1
j = 0
while true
    pattern = pattern * num_array[j]
    j += 1
    if j == num_array.size
        break
    end
end
num_order = num_array.permutation.to_a
i = 0
a = 0
b = 0
for i in 0..pattern
    if num_order[i] == pp
        a = i
    end
    if num_order[i] == q
        b = i
    end
end
print (a-b).abs

