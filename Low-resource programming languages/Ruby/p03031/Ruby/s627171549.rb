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

def bit_search(bit_num)
  for x in [*0...2**bit_num]
    # true, falseの配列がyieldされる
    yield x.to_s(2).rjust(bit_num, '0').split('').map { |s| s == '1' }
  end
end

N, M = get_ints
K = []
S = Array.new(M) { [] }
M.times do |i|
  line = get_ints_minus_one
  K[i] = line[0]
  S[i] = line[1..]
end
P = get_ints

ans = 0
bit_search(N) do |n_arr|
  count = 0
  S.each.with_index do |s_arr, p_index|
    on_count = s_arr.each.count { |s| n_arr[s] }
    count += 1 if on_count % 2 == P[p_index]
  end
  ans += 1 if count == M
end

puts ans
