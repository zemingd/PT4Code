N, K = gets.split(" ").map(&:to_i)
sum = 0

1.upto(N) do |i|
    a = i
    count = 0
    while a < K do
        count += 1
        a *= 2
    end
    sum += 0.5** count
end

puts sum.quo(N)