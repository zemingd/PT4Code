n = gets.chomp.to_i
takoyaki = []
for i in 0..(n-1)
    takoyaki[i] = gets.chomp.to_i
end
sum = 0
for i in 0..(n-1)
    for j in (i+1)..(n-1)
        sum = sum + takoyaki[i]*takoyaki[j]
    end
end
puts sum