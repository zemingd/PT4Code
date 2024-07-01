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

class UnionFind
  attr_accessor :par, :size

  def initialize(n)
    @par = Array.new(n) { |i| i }
    @size = Array.new(n) { 1 }
  end

  def root(x)
    return x if @par[x] == x

    return @par[x] = root(@par[x])
  end

  def unite(x, y)
    rx = root(x)
    ry = root(y)

    return if rx == ry

    @par[rx] = ry
    @size[ry] += @size[rx] # ここはry = rxであってる
  end

  def same(x, y)
    root(x) == root(y)
  end

  def to_h
    @par.each.with_index.each_with_object({}) do |(_, i), sum|
      ri = root(i)
      sum[ri] = [] unless sum[ri]
      sum[ri].push(i)
    end
  end

  def size(x)
    @size[root(x)]
  end
end

N, M = get_ints

X = []
M.times do |i|
  X[i] = get_ints
end

ans = []
ans << (N * (N-1)) / 2

union_find = UnionFind.new(N+1)

X.reverse.each do |a, b|
  if union_find.same(a, b)
    ans << ans.last
  else
    ans << (ans.last - union_find.size(a) * union_find.size(b))
    union_find.unite(a,b)
  end
end

ans.reverse[1..].each do |x|
  puts x
end
