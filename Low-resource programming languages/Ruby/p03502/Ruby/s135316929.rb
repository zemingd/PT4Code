N = gets.to_i

def sum_digits(number)
  sum = 0
  while number > 0
    sum += number % 10
    number /= 10
  end
  sum
end

puts N % sum_digits(N) == 0 ? 'Yes' : 'No'