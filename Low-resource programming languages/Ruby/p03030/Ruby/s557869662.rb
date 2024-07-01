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
S = []
P = []
stock = []
N.times do |i|
  S[i], P[i] = gets.chomp.split
  P[i] = P[i].to_i
  stock[i] = {
    name: S[i],
    point: P[i],
    index: i + 1,
  }
end

ans = stock.sort do |a, b|
  name_x = a[:name] <=> b[:name]
  if name_x != 0
    name_x
  else
    b[:point] <=> a[:point]
  end
end

ans.each do |x|
  puts x[:index]
end
