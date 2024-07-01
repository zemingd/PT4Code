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

NUMS = [3, 5, 7]

def countup(nums)
  last = nums.pop
  if last.nil?
    [3]
  elsif last == 3 || last == 5
    nums << last + 2
    nums
  else
    countup(nums) + [3]
  end
end

test = [3]
count = 0

while test.join.to_i <= N
  if test.include?(3) && test.include?(5) && test.include?(7)
    count += 1
  end
  test = countup(test)
end

puts count
