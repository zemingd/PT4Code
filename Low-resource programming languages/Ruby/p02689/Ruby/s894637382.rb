#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
h = [0] + gets.chomp.split.map(&:to_i)
ans = Array.new(n + 1, 0)

m.times do
  a, b = gets.chomp.split.map(&:to_i)

  if h[a] > h[b]
    ans[b] = -1
  elsif h[a] < h[b]
    ans[a] = -1
  else
    ans[a] = -1
    ans[b] = -1
  end
end

ans = ans.filter { |i| i != -1 }.length - 1

puts ans
