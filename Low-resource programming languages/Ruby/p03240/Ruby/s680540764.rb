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

N = get_int
X = []
N.times do |i|
  X[i] = get_ints
end

ans = nil

[*0..100].each do |cx|
  [*0..100].each do |cy|
    dame = false
    h_min = 0
    h_max = 10 ** 24
    X.each do |x, y , h|
      if h == 0
        test = (x - cx).abs + (y - cy).abs
        h_max = test if test < h_max
      else
        test = h + (x - cx).abs + (y - cy).abs
        if test < h_min || test > h_max
          dame = true
          break
        end
        h_min = test
        h_max = test
      end
    end
    if dame || h_min != h_max
      next
    else
      ans = [cx, cy, h_min]
    end
  end
end

puts "#{ans[0]} #{ans[1]} #{ans[2]}"

