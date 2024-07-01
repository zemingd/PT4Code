N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

res = 0
(0..K).to_a.each do |k|
    sum = 0
    A.each do |a|
        sum += k ^ a
    end
    res = sum if res < sum
end

puts res