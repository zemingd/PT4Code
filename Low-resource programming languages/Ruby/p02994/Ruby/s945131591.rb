def chmin(a, b)
  a > b ? b : a
end
n,l = gets.split.map(&:to_i)
tas = []
sum = 0
(1..n).each do |i|
    tas << i + l - 1
    sum += i + l - 1
end

k = tas[0]

(1..n - 1).each do |i|
    if tas[i - 1].abs > tas[i].abs
        k = tas[i]
    end
end

puts sum - k
