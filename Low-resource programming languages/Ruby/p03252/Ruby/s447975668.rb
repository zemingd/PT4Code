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

S = gets.chomp
T = gets.chomp

sx = S.split('')
tx = T.split('')

from_hash = {}
to_hash = {}

no = false
sx.zip(tx).each do |s, t|
  if from_hash[s].nil?
    from_hash[s] = t
  end
  if to_hash[t].nil?
    to_hash[t] = s
  end

  if from_hash[s] != t
    no = true
    break
  end

  if to_hash[t] != s
    no = true
    break
  end
end

puts no ? 'No' : 'Yes'
