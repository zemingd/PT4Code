gets.to_i

nums = gets.split.map(&:to_i)

res = 0
nums.combination(3) do |a, b, c|
    res += 1 if a < b + c && b < a + c && c < a + b
end

puts res