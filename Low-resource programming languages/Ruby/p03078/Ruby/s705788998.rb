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

require __dir__ + '/../../../lib/pqueue'

X, Y, Z, K = get_ints
A = get_ints.sort!
B = get_ints.sort!
C = get_ints.sort!

ax = A.length - 1
bx = B.length - 1
cx = C.length - 1

puts A[ax] + B[bx] + C[cx]

pqueue = PQueue.new([]) { |a, b| a[0] <=> b[0] }
set = Set.new

(K-1).times do
  if ax > 0 && !set.include?([ax-1, bx, cx])
    pqueue.push([A[ax-1]+B[bx]+C[cx], [ax-1, bx, cx]])
    set.add([ax-1, bx, cx])
  end
  if bx > 0 && !set.include?([ax, bx-1, cx])
    pqueue.push([A[ax]+B[bx-1]+C[cx], [ax, bx-1, cx]])
    set.add([ax, bx-1, cx])
  end
  if cx > 0 && !set.include?([ax, bx, cx-1])
    pqueue.push([A[ax]+B[bx]+C[cx-1], [ax, bx, cx-1]])
    set.add([ax, bx, cx-1])
  end
  top = pqueue.pop
  puts top[0]
  ax, bx, cx = top[1]
end

