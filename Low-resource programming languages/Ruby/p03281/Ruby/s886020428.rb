def divisors(n)
  r = []
  1.upto(n) do |i|
    break unless i <= n / i
    next unless (n % i).zero?
    r << i
    r << n / i if i != n / i
  end
  r
end

p 1.step(gets.to_i, 2).map.count{|i| divisors(i).size == 8}
