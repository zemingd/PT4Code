n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
data = a.clone
n.times do |i|
        data[i] -= i + 1
end
data.sort
b = data[n / 2]
sum = 0
n.times do |i|
        sum += (data[i] - b).abs
end
puts sum