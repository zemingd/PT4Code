n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
n.times do |i|
        a[i] = a[i] - i - 1
end
a.sort
b = a[n / 2]
sum = 0
n.times do |i|
        sum += (a[i] - b).abs
end
if(n % 2 != 0) do
        b = a[n / 2 + 1]
        sumE = 0
        n.times do |i|
                sumE += (a[i] - b).abs
        end
        puts (sum < sumE)?sumO:sumE
else
        puts sum
end