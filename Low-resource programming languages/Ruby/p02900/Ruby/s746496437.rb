require 'prime'
require 'set'

def get_div_num(num, max = 10 ** 12)
  result = Set.new
  tmp = num
  Prime.each(max) do |prime|
    if tmp % prime == 0
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

common_div_nums = get_div_num(a) & get_div_num(b)
puts common_div_nums.size + 1