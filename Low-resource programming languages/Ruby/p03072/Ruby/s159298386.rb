N = gets.to_i
mountain= gets.split.map!{|i| i.to_i}
count = 1
i = 1
while i < N do
    if mountain[i] >= mountain[i - 1]
        count += 1
    end
    i += 1
end
puts count