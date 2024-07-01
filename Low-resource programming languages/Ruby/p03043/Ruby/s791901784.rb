n,k = gets.chomp.split(" ").map(&:to_i)
sum = 0
for i in 1..n do
    x = i
    count = 0
    while x<k do
        x *= 2
        count+=1
    end
    sum += 2 ** -count
end
puts (sum/n).to_f