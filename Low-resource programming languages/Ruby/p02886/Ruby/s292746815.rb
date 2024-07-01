n = gets.chomp.to_i
takoyaki = gets.split(" ")
takoyaki.map!{|item| item.to_i}
sum = 0
for i in 0..(n-1)
    for j in (i+1)..(n-1)
        sum = sum + takoyaki[i]*takoyaki[j]
    end
end
puts sum