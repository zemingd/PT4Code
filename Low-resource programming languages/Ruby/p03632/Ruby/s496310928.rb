a,b,c,d = gets.chomp.split.map(&:to_i)
count = 0
for i in a..b
    for j in c..d
        if i == j
            count += 1
        end
    end
end
print([0, count - 1].max)