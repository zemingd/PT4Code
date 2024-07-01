# Your code here!

K = gets.to_i
counter = 0

for i in 1..K
    for j in i..K
        if (i % 2 == 0 && j % 2 != 0) || (i % 2 != 0 && j % 2 == 0)
            counter += 1
        end
    end
end
puts counter