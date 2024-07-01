require 'prime'
require 'set'

def get_div_num(num, max = 10 ** 12)
  result = Set.new
  tmp = num
  Prime.each(max) do |prime|
    while tmp % prime == 0
      tmp /= prime
      result.add(prime)
    end
    if tmp < prime
      return result
    end
  end
  result
end

a, b = gets.split(' ').map(&:to_i)

smaller, bigger = a > b ? [b, a] : [a, b]

smaller_div_nums = get_div_num(smaller)

result = 1
smaller_div_nums.each do |div|
  if bigger % div == 0
    result += 1
  end
end
puts result