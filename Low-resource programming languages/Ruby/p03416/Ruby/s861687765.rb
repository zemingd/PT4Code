n = gets.split(' ').map{|i| i.to_i}
count = 0;
for i in n[0]..n[1]
    if i / 10000 == i % 10 && i / 10 % 10 == i / 1000 % 10
        count += 1
    end
end
puts count