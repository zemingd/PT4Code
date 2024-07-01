n = gets.to_i
numbers = gets.split.map(&:to_i)
ans = 0

(numbers.length-2).times do |i|
  first = numbers[i]
  second = numbers[i+1]
  third = numbers[i+2]
  ans += 1 if (first < second && second < third) || (first > second && second > third)
end

p ans