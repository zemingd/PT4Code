#!/usr/bin/ruby
# encoding: utf-8

# ABC 109 C Skip

def calcGcd n,m
  n,m = m,n if m > n
  r = -1 
  while r.nonzero? do
    r = n % m
    return m if r.zero?
    n,m = m,r
  end
end

N,X = gets.split.map(&:to_i)
coord = gets.split.map(&:to_i)

diffs = Array.new

coord.each do |n|
  diffs.push (n-X).abs
end

# Dはdiffsたちの最大公約数
ans = diffs[0]
(0..diffs.size-1).each do |n|
  ans = calcGcd ans,diffs[n]
end

p ans
