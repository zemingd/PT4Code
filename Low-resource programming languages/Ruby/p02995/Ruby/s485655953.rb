#!/usr/bin/ruby
# encoding: utf-8

# input
a,b,c,d = gets.split.map(&:to_i)

lc = c.lcm(d)
divisible_c = b/c - (a-1)/c
divisible_d = b/d - (a-1)/d
divisible_lc = b/lc - (a-1)/lc

puts b-(a-1) - (divisible_c + divisible_d - divisible_lc)