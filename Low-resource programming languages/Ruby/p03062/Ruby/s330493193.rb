n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

odd = false
min = a[0].abs
sum = 0
for i in 1..n do
    sum += a[i-1].abs
    if min > a[i-1].abs
        min = a[i-1].abs
    end
    if a[i-1] < 0
        odd = !(odd)
    end
end
if odd 
    sum -= 2*min
end
p sum
