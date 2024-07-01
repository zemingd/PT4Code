n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

count = 0
(1..n - 1).each do |i|
    if (p[i - 1] < p[i]) && (p[i + 1] > p[i])
        count += 1
    end
end
puts count