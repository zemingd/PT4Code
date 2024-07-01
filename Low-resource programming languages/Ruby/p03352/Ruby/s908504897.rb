
x = gets.chomp.to_i
max = 1
for i in 2..(Math.sqrt(x)).to_i
    k = i
    while k * k <= x
         k *= k
    end
    if k > max
        max = k
    end
end
print(max)