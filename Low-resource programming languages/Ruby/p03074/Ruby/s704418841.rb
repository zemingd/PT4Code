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

N, K = get_ints
S = gets.chomp

ones = []
zeros = []

current = '1'
current_number = 0

S.split('').each do |s|
  if s == '0'
    if current == '1'
      ones << current_number
      current_number = 0
      current = '0'
    end
    current_number += 1
  else
    if current == '0'
      zeros << current_number
      current_number = 0
      current = '1'
    end
    current_number += 1
  end
end

if current == '0'
  zeros << current_number
else
  ones << current_number
end

stock = ones[0]
right = 0
ans = stock
[*0...zeros.length].each do |left|
  while right < left + K
    stock += (right < zeros.length ? zeros[right] : 0) + (right+1 < ones.length ? ones[right+1] : 0)
    right += 1
  end
  ans = stock if ans < stock
  stock -= ones[left] + zeros[left]
end

puts ans
