size = gets.chomp.to_i
input_values = gets.chomp.split

count = 0
for i in 0...size
   for j in 0...(size-(1+i))
       if input_values[j] > input_values[j + 1]
            tmp = input_values[j+1]
            input_values[j+1] = input_values[j]
            input_values[j] = tmp
            count += 1
        end
    end
end


puts input_values.join(' ')
print "\n"

print count
print "\n"