# frozen_string_literal: true

N = gets.chomp.to_i
X = gets.chomp.to_i(2)

memo = {}

def popcount(x)
  # 拝借したポップカウント
  x -= ((x >> 1) & 6_148_914_691_236_517_205)

  x = (x & 3_689_348_814_741_910_323) + ((x >> 2) & 3_689_348_814_741_910_323)

  x = (x + (x >> 4)) & 1_085_102_592_571_150_095
  x += (x >> 8)
  x += (x >> 16)
  x += (x >> 32)
  x & 127
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
  num = popswitch(X, n)
  memo[num] ||= f(num)
  puts memo[num]
end
