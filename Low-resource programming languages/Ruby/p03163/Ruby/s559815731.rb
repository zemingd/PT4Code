n, max = gets.chomp.split(" ").map(&:to_i)
sumValue = Array.new(n + 1).map {Array.new(max + 1, 0)}

for i in 0..n - 1
    weight, value = gets.chomp.split(" ").map(&:to_i)
    for w in 0..max
        if w >= weight
            sumValue[i + 1][w] = [sumValue[i][w], sumValue[i][w - weight] + value].max
        else
            sumValue[i + 1][w] = sumValue[i][w]
        end
    end
end
puts sumValue[n][max]