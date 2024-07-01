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
counts = []
X.reverse.each do |a, b|
  if hash[a].nil? && hash[b].nil?
    number = sets.length
    hash[a] = number
    hash[b] = number
    sets[number] = number
    counts[number] = 2
    ans << (ans.last - 1)
  elsif hash[a].nil? && !hash[b].nil?
    hash[a] = hash[b]
    counts[sets[hash[a]]] += 1
    ans << (ans.last - (counts[sets[hash[a]]] - 1))
  elsif hash[b].nil? && !hash[a].nil?
    hash[b] = hash[a]
    counts[sets[hash[b]]] += 1
    ans << (ans.last - (counts[sets[hash[b]]] - 1))
  else
    if sets[hash[a]] == sets[hash[b]]
      ans << ans.last
    else
      b_count = counts[sets[hash[b]]]
      sets[hash[b]] = sets[hash[a]]
      ans << ans.last - counts[sets[hash[a]]] * b_count
      counts[sets[hash[b]]] += b_count
    end
  end
end

ans.reverse[1..].each do |x|
  puts x
end
