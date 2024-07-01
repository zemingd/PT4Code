#! /usr/bin/env ruby

input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}

N = input[0][0]
T = input[1][0]
A = input[1][1]
H = input[2]

def ondo(h)
  T - h * 0.006
end

def ondo_diff(h)
  (A - ondo(h)).abs
end

min = nil
min_pt = nil
pt = 0

while h = H.shift
  d = ondo_diff(h)
  pt = pt + 1
  if min == nil || d < min  then
    min = d
    min_pt = pt
  end
end

puts min_pt
