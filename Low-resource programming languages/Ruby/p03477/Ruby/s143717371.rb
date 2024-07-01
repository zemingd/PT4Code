N, A, B = gets.split.map(&:to_i)

def sum_digits(number)
  sum = 0
  while number > 0
    sum += number % 10
    number /= 10
  end
  sum
end

puts (1..N).select { |number| A <= sum_digits(number) && sum_digits(number) <= B }.reduce(:+)