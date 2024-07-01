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

N, A, B, C = get_ints
L = []
N.times do |i|
  L[i] = get_int
end

def search(cur, ans)
  return ans if cur == N

  none = search(cur+1, ans.dup)

  a_ans = ans.dup
  a_ans[3] += 10 if a_ans[0] > 0
  a_ans[0] += L[cur]
  a = search(cur+1, a_ans)

  b_ans = ans.dup
  b_ans[3] += 10 if b_ans[1] > 0
  b_ans[1] += L[cur]
  b = search(cur+1, b_ans)

  c_ans = ans.dup
  c_ans[3] += 10 if c_ans[2] > 0
  c_ans[2] += L[cur]
  c = search(cur+1, c_ans)

  if none[0].is_a? Array
    none + a + b + c
  else
    [none, a, b, c]
  end
end

ans = search(0, Array.new(4, 0))

min_point = A + B + C
test = nil
ans.each do |arr|
  next if arr[0] == 0 || arr[1] == 0 || arr[2] == 0
  res = (A-arr[0]).abs + (B-arr[1]).abs + (C-arr[2]).abs + arr[3]
  if res < min_point
    min_point = res
    test = arr
  end
end

puts min_point
