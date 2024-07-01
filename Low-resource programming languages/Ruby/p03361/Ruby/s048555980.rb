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

H, W = get_ints

S = []
H.times do |i|
  S[i] = gets.chomp.split('')
end

def check(i, j, array)
  return true if array[i][j] != '#'

  test = []
  if i > 0
    test << array[i-1][j]
  end
  if i < array.length - 1
    test << array[i+1][j]
  end
  if j > 0
    test << array[i][j-1]
  end
  if j < array[0].length - 1
    test << array[i][j+1]
  end
  test.any? { |s| s == '#' }
end

ans = true
S.each.with_index do |h, i|
  S.each.with_index do |s, j|
    unless check(i, j, S)
      ans = false
      break
    end
  end
  break unless ans
end

puts ans ? 'Yes' : 'No'
