x, y = gets.strip.split.map(&:to_i)

foo = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], 2]
result = 0
for a in foo do
    break if a == 2
    result = 1 if a.include?(x) && a.include?(y)
end

puts result == 1 ? "Yes" : "No"
