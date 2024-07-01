
n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
difference = []
i = 0

while i < n-1
    difference << ((array[0..i]).sum - (array[(i+1)..(n-1)]).sum).abs
    if difference[i-1] < difference[i]
        break
    end
    i += 1
end

puts difference.min
