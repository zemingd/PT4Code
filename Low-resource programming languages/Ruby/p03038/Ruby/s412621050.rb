#!/usr/bin/env ruby

n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

bc = []

0.step(m - 1) do |i|
  k = gets.chomp.split(' ').map(&:to_i)
  bc.push({ b: k[0], c: k[1] })
end

bc.each do |h|
  a.push(*Array.new(h[:b]){ h[:c] })
end

p a.sort.reverse.take(n).inject(:+)