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
S = gets.chomp

strs = S.split('')

e_num = 0
w_num = 0
strs.each do |s|
  if s == 'E'
    e_num += 1
  else
    w_num += 1
  end
end

ans = 10 ** 9
cur_e_num = 0
cur_w_num = 0
strs.each.with_index do |s, i|
  e_to_w = if s == 'E'
    e_num - cur_e_num - 1
  else
    e_num - cur_e_num
  end
  w_to_e = cur_w_num
  sum = e_to_w + w_to_e
  ans = sum if sum < ans

  if s == 'E'
    cur_e_num += 1
  else
    cur_w_num += 1
  end
end

puts ans
