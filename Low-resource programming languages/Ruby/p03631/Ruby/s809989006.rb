num_a = gets.chomp.split("")
length = num_a.length
num_b = []
comparison = 0

v = 0
i = length - 1
while i >= 0
    num_b[v] = num_a[i]

    v = v + 1
    i = i - 1
end

for count in 0..length-1
    if num_a[count] == num_b[count]
        comparison = comparison + 1
    end
end

if comparison == length
    puts "Yes"
else
    puts "No"
end