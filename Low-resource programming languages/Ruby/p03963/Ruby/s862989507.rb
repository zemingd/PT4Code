num,color = gets.chomp.split(" ")
n = num.to_i
k = color.to_i

sum = 1
    (1..n-1).each do |j|
        sum *= (k-1)
    end
p sum * k