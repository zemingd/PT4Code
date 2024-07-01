N = gets.to_i
as = gets.split.map(&:to_i)

count = Array.new(10**5 + 1, 0)
as.each do |a|
    count[a - 1] += 1 if a > 0
    count[a] += 1
    count[a + 1] += 1
end

puts count.max