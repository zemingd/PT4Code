def prime_factorize(num)
  res = []

  2.upto(Math.sqrt(num)) do |i|
    while num % i == 0
      res << i
      num /= i
    end
  end

  res << num if num != 1

  res
end

n = gets.to_i
as = gets.split.map(&:to_i).select(&:even?)

puts as.map { |a| prime_factorize(a).count(2) }.inject(:+)
