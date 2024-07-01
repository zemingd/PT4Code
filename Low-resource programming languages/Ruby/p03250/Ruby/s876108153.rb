#!/usr/bin/ruby
# encoding: utf-8

# ABC 110 A

A = gets.split.map(&:to_i)
A.sort!
ans = A[2]*10 + A[1] + A[0]
p ans