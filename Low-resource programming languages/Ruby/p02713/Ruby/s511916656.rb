#!/usr/bin/env ruby
k = gets.chomp.to_i

gcd_arr = Array.new(k+1, 0)


def gcd(m, n)
  m, n = n, m if n >= m

  return m if n == 0

  gcd(n, m % n)
end

ans = 0
1.upto(k) do |i|
  1.upto(k) do |j|
    x = gcd(i, j)

    1.upto(k) do |k|
      ans += gcd(x, k)
    end
  end
end

puts ans
