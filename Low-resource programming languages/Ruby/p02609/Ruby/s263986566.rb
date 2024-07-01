# frozen_string_literal: true

N = gets.chomp.to_i
X = gets.chomp.to_i(2)

def popcount(n)
  count = 0
  n.to_s(2).size.times do |i|
    count += 1 if 1 << i & n != 0
  end
  count
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
