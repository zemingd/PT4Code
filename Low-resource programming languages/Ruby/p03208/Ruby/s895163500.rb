#!/usr/bin/env ruby
n, k = STDIN.readline.strip.split(' ').map(&:to_i)
h = STDIN.read().split("\n").map(&:to_i)
h = h.sort
min = 10**9+1
for i in (k-1)..(n-1) do
  min = h[i] - h[i-(k-1)] if min > h[i] - h[i-(k-1)]
end
puts min
