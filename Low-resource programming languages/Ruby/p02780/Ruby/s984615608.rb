def expected(num)
    (num + 1).to_f / 2.0
end

n, k = gets.split.map(&:to_i)
dice = gets.split.map(&:to_i)
sum = [0]

dice.each{|d|
    sum.push(expected(d) + sum.last)
}
sum = sum[1..-1]

puts dice.size.times.drop(k - 1).map{|index|
    sum[index] - sum[index - k + 1]
}.max
