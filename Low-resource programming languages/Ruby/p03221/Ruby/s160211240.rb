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

N, M = get_ints
X = []
M.times do |i|
  X[i] = [i] + get_ints
end

X.sort! { |a, b| a[2] <=> b[2] }

hash = Hash.new { |h, k| h[k] = 1 }

test = X.map do |i, p, y|
  number = p.to_s.rjust(6, '0') + hash[p].to_s.rjust(6, '0')
  hash[p] += 1
  [i, p, y, number]
end

test.sort { |a, b| a[0] <=> b[0] }.each do |i, p, y, num|
  puts num
end
