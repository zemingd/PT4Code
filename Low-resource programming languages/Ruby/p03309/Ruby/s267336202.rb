n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
avg = 0
sum = 0
n.times do |i|
        avg += a[i] - i - 1
end
avg /= n
sum = 0
n.times do |i|
        sum += a[i] - i - 1 - avg
end
puts sum