#!/usr/bin/env ruby

def min(a, b)
  a > b ? b : a
end

N, M, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

def solve(a, b, c, k)
  return c - 1 if k < 0

  return c if a.empty? && b.empty?

  if b.empty?
    a0 = a.shift
    return solve(a, b, c + 1, k - a0)
  end

  if a.empty?
    b0 = b.shift
    return solve(a, b, c + 1, k - b0)
  end

  ac = solve(a[-(a.size-1)..-1], b, c+1, k-a[0])
  bc = solve(a, b[-(b.size-1)..-1], c+1, k-b[0])

  if ac >= bc
    return ac
  else
    return bc
  end
end

puts solve(A, B, 0, K)
