def count_divide(num, divisor = 2)
  count = 0
  while num % divisor == 0
    num /= divisor
    count += 1
  end
  count
end

_n = gets
as = gets.split.map(&:to_i)
puts as.map { |e| count_divide(e) }.inject(:+)
