n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
a.sort
b = a[n / 2]
sum = 0
n.times do |i|
        sum += (a[i] - b - i - 1).abs
end    
if (n % 2 == 0) && a[n / 2] != a[n / 2 - 1] 
        b = a[n / 2 - 1] 
        sum2 = 0
        n.times do |i|
                sum += (a[i] - b - i - 1).abs
        end
        sum = (sum <= sum2) ? sum : sum2
end
puts sum