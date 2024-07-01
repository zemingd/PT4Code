n = gets.to_i
w = gets.split.map(&:to_i)
sum1 = 0
sum2 = 0
(0...w.length).each do |i|
    sum1 += w[i]
end
(0...n).each do |i|
    if sum2 >= sum1 / 2
        break
    end
    sum2 += w[i]
end
puts (sum2 - (sum1-sum2)).abs