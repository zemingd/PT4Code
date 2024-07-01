def count_prime(num)
  res = 0
  return res if num.odd?

  while num % 2 == 0
    res += 1
    num /= 2
  end

  res
end

n = gets.to_i
as = gets.split.map(&:to_i)

puts as.inject(0) { |r, a| r + count_prime(a) }
