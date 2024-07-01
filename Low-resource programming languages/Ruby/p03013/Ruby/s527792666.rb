#!/usr/bin/env ruby

require 'set'

class Hash
  def push(key, value)
    self[key] = [] if self[key] == nil
    self[key].push(value)
  end
end

class Array
  def lower_bound(value)
    left = -1;
    right = self.length;
    while left + 1 < right
      mid = left + (right - left) / 2;
      if self[mid] >= value
        right = mid
      else
        left = mid
      end
    end
    right
  end

  def unique
    res = [self.first]
    each_cons(2) do |a, b|
      if a != b
        res.push(b)
      end
    end
    res
  end
end

def get_ints
  gets.chomp.split.map(&:to_i)
end

def get_ints_minus_one
  get_ints.map { |x| x - 1 }
end

def get_int
  gets.chomp.to_i
end

# mod m での aの逆元
# mが素数のときのみ有効
def modinv(a, m)
  b = m; u = 1; v = 0

  while b != 0
    t = a / b
    a -= t * b
    c = a; a = b; b = c
    u -= t * v
    c = u; u = v; v = c
  end
  u %= m
  u += m if u < 0
  u
end

def nCk(n, k, mod)
  ue = 1
  shita = 1
  k.times do |a|
    ue = ue * (n - a) % mod
    shita = shita * (k - a) % mod
  end
  ue * modinv(shita, mod) % mod
end

N, M = get_ints
A = []
M.times do |i|
  A[i] = get_int
end
MOD = 10**9 + 7


ax = A + [N+1]

if ax.each_cons(2).any? { |a, b| b - a == 1}
  puts 0
else
  sum = 1
  cur = 0
  ax.each do |a|
    x = a - cur - 1
    if x <= 0
      cur = a + 1
      next
    end

    stock = 0
    i = x
    while i > x / 2
      stock += nCk(i, x - (x-i) * 2, MOD)
      i -= 1
    end
    if x % 2 == 0
      stock += 1
    end
    sum = sum * stock % MOD
    cur = a + 1
  end
  puts sum
end
