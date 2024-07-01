n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

count = 0
(1..n - 1).each do |i|
    if n[i - 1] < n[i] && n[i + 1] > n[i]
        count += 1
    end
end
puts count