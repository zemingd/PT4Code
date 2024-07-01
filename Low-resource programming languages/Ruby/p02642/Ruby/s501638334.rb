# @param num [Integer]
# @return Integer
def divisors(num)
  (1..Math.sqrt(num).floor).map do |divisor|
    next unless num % divisor == 0

    quotient = num / divisor
    quotient == divisor ? [divisor] : [divisor, quotient]
  end.compact.flatten.sort
end

N = gets.to_i
A = gets.split.map(&:to_i)
hash = Hash.new { |h, k| h[k] = 0 }
A.each do |a|
  hash[a] += 1
end

res = 0
A.each do |a|
  next if hash[a] >= 2

  divs = divisors(a)
  divs.pop
  res += 1 if divs.all? { |d| hash[d] == 0 }
end

puts(res)
