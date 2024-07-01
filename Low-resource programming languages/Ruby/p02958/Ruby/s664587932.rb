n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
(1..n).each do |i|
    count += 1 if a[i-1] != i
end

puts count <= 2 ? "YES" : "NO"
