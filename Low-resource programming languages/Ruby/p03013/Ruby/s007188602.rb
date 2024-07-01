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

class Combination
  def initialize(n, mod)
    @mod = mod
    @fac, @finv, @inv = Array.new(3) { [] }
    @fac[0] = @fac[1] = 1
    @finv[0] = @finv[1] = 1
    @inv[1] = 1
    i = 2
    while i <= n
      @fac[i] = @fac[i - 1] * i % @mod
      @inv[i] = @mod - @inv[@mod % i] * (@mod / i) % @mod
      @finv[i] = @finv[i - 1] * @inv[i] % @mod
      i += 1
    end
  end

  def nCk(n, k)
    return 0 if (n < k) || (n < 0 || k < 0)

    @fac[n] * (@finv[k] * @finv[n - k] % @mod) % @mod
  end
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
  max_n = (ax.each_cons(2).map { |a, b| b - a - 2 } + [ax.first-1]).max
  combination = Combination.new(max_n, MOD)

  ax.each do |a|
    x = a - cur - 1
    if x <= 0
      cur = a + 1
      next
    end

    stock = 0
    i = x
    while i > x / 2
      stock += combination.nCk(i, x - (x-i) * 2)
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
