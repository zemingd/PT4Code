a,b = gets.split.map(&:to_i)
count = 0
for i in a..b
    if i.to_s == i.to_s.reverse
        count += 1
    end
end
puts count 