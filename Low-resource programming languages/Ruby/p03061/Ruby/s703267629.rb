n = gets
nums = gets.split.map(&:to_i)
three_min = nums.min(3)
second_min = three_min[1]
answer = 1
(2..second_min).each do |i|
    if three_min.select{|m| m % i == 0}.size >= 2
        answer = i
    end
end
p answer