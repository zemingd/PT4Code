def distinct(numbers, n)
  puts n == numbers.uniq.count ? "YES" : "NO"
end

n = gets.chomp.to_i
numbers = gets.chomp.split(" ").map(&:to_i)
distinct(numbers, n)