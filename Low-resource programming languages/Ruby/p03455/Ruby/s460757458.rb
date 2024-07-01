a, b = gets.split(" ").map(&:to_i)
result = a * b
print("#{result.odd? ? Odd : Even}")
