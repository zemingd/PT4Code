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
A = get_ints
X = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

if A.length == 1
  puts A[0].to_s * (N / X[A[0]])
else
  A.sort! { |a, b| (X[a] <=> X[b]).then { |x| x == 0 ? a <=> b : x } }
  ax = A.each_cons(2).map { |x, y| X[x] == X[y] ? nil : x }.compact
  ax.push(A.last) if X[A.last] != X[ax.last]

  min = A[0]

  res = []
  test = ax[1..].map { |a| [a, X[a]] }
  test.unshift nil

  test.repeated_combination(3).each do |x, y, z|
    sum = (x ? x[1] : 0) + (y ? y[1] : 0) + (z ? z[1] : 0)
    div = (N - sum) / X[min]
    ama = (N - sum ) % X[min]
    if sum < N && ama == 0
      xyz = [x, y, z].compact.sort { |a, b| a[0] <=> b[0] }.reverse

      if xyz.first[0] > min
        res.push(xyz.map{ |x| x[0] }.join + (min.to_s * div))
      else
        res.push((min.to_s * div) + xyz.map { |x| x[0] }.join)
      end
    end
  end

  puts res.sort { |a, b| (a.length <=> b.length).then { |x| x == 0 ? a <=> b : x } }.last
end

