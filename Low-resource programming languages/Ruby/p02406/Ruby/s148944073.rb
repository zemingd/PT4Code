n = gets.to_i
count = []
for i in 1..n
    if i % 3 == 0
        count << i
    end
end
puts count.join(" ")