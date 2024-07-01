require 'pp'

n = gets.chomp!.to_i
x_n = gets.split.map(&:to_i)

sum_min = 9999999999999
(1..100).each do |i|
    sum = 0
    x_n.each do |x|
        sum += (x - i) ** 2
    end

    if sum < sum_min
        sum_min = sum
    end
end

puts sum_min
