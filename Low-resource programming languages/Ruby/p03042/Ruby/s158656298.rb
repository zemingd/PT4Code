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

months = [*1..12].map { |n| n.to_s.rjust(2, '0') }

if months.include?(S[0..1])
  if months.include?(S[2..])
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
else
  if months.include?(S[2..])
    puts 'YYMM'
  else
    puts 'NA'
  end
end
