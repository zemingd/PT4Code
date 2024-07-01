N = gets.chomp.to_i

require "prime"

i = 105

result = 0

def calcDivisionNum(i)
  return Prime.prime_division(i).reduce(1) {|result, array|
    result * (array[1] + 1)
  }
end

while i <= N do
  result += 1 if calcDivisionNum(i) == 8
  i += 2
end

puts result
