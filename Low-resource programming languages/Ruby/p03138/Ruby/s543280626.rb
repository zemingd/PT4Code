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

N, K = get_ints
A = get_ints

keta = K.to_s(2).length

ax = A.dup
xx = Array.new(keta) { [] }

i = 0
while i < keta
  ax = ax.map do |a|
    xx[i].push a % 2
    a / 2
  end
  i += 1
end

stock = xx.map { |arr| arr.sum }

value = 0
stock.reverse.each.with_index do |s, i|
  if s <= N/2
    t = value + 2 ** (keta - 1 - i)
    value = t if t <= K
  end
end

ans = 0
A.each do |a|
  ans += a ^ value
end

puts ans
