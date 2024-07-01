# frozen_string_literal: true

N = gets.chomp.to_i
X = gets.chomp.to_i(2)

def popcount(x)
  x = x - ((x >> 1) & 0x5555555555555555)

  x = (x & 0x3333333333333333) + ((x >> 2) & 0x3333333333333333)

  x = (x + (x >> 4)) & 0x0f0f0f0f0f0f0f0f
  x = x + (x >> 8)
  x = x + (x >> 16)
  x = x + (x >> 32)
  x & 0x0000007f
end

def f(n)
  count = 0
  until n.zero?
    count += 1
    n = n % popcount(n)
  end
  count
end

def popswitch(x, i)
  num = 1 << (i - 1)
  x ^ num
end

(1..N).reverse_each do |n|
  puts f(popswitch(X, n))
end
