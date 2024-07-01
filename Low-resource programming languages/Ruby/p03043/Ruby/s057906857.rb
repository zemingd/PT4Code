input = gets.chomp.split
n = input[0].to_i
k = input[1].to_i

sum = 0.0
for i in 1..n do
    if i >= k 
        sum += 1.0/n
    else
        e = Math.log2(k.to_f/i).ceil
        sum += 0.5**e /n
    end
end

puts sprintf("%.12f",sum)