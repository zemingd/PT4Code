#!/usr/bin/env ruby
# frozen_string_literal: true

input = gets.chomp.split(' ')

a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
k = input[3].to_i

ans = 0

# for a
if k >= a
  ans += a
  k -= a
else
  ans += k
  k = 0
end

# for b
if k >= b
  k -= b
else
  k = 0
end

# for c
if k >= c
  ans -= c
  k -= c
else
  ans -= k
  k = 0
end

=begin
(0..a - 1).each do
  break if k.zero?

  k -= 1
  ans += 1
end

(0..b - 1).each do
  break if k.zero?

  k -= 1
end

(0..c - 1).each do
  break if k.zero?

  k -= 1
  ans -= 1
end
=end

puts ans