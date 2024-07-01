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

X = []
N, M = get_ints
M.times do |i|
  a, b = get_ints
  X << [a, 'a', i]
  X << [b, 'b', i]
end
X.sort! do |x, y|
  if (x[0] <=> y[0]) == 0
    if x[1] == 'a'
      1
    elsif y[1] == 'a'
      -1
    else
      0
    end
  else
    x[0] <=> y[0]
  end
end

set = Set.new
b_set = Set.new
count = 0
X.each do |v, type, index|
  if type == 'a'
    set.add(index)
  else
    unless b_set.include?(index)
      count += 1
      b_set += set
    end
  end
end

puts count
