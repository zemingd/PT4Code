#!/usr/bin/ruby
# encoding: utf-8

N = gets.to_i
T,A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

def temp t,x
  return t-x*0.006
end

diff = Array.new(N,0)

(0..N-1).each do |i|
  diff[i] = (A - temp(T,H[i])).abs
end

ans = -1
min = diff[0]
(0..N-1).each do |i|
  if min >= diff[i]
    min = diff[i]
    ans = i + 1
  end
end

p ans
