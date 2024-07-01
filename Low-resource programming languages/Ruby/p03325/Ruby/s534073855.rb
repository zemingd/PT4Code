n = gets.to_i
numbers = gets.split.map(&:to_i)
ans = 0
numbers.each do |number|
  while number.even?
    number /= 2
    ans += 1
  end
end
puts ans
