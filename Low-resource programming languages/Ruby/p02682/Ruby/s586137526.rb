array = gets.split.map(&:to_i)

sum = 0
k = array[3]


sum = sum + array[0]
k = k - array[0]

if k <= 0
    puts(sum)
elsif k - array[1] <= 0
    puts(sum)
else
    puts(sum - (k - array[1]))
end

