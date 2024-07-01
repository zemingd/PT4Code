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
  X[i] = get_ints
end

ans = []
ans << (N * (N-1)) / 2

hash = {}
sets = []
X.reverse.each do |a, b|
  if hash[a].nil? && hash[b].nil?
    set = Set.new
    set.add(a); set.add(b);
    hash[a] = set
    hash[b] = set
    ans << (ans.last - 1)
  elsif hash[a].nil? && !hash[b].nil?
    hash[a] = hash[b]
    hash[b].add(a)
    ans << (ans.last - (hash[b].length - 1))
  elsif hash[b].nil? && !hash[a].nil?
    hash[b] = hash[a]
    hash[a].add(b)
    ans << (ans.last - (hash[b].length - 1))
  else
    if hash[a] == hash[b]
      ans << ans.last
    else
      ans << ans.last - hash[a].length * hash[b].length
      b_set = hash[b]
      b_set.each do |x|
        hash[x] = hash[a]
      end
      hash[a].merge(b_set)
    end
  end
end

ans.reverse[1..].each do |x|
  puts x
end
