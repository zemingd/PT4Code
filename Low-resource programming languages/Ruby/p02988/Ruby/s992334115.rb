#!/usr/bin/env ruby
# frozen_string_literal: true
n = gets.to_i
pi = gets.split.map(&:to_i)
check = 0
(1...n-1).each do |i|
  l = pi[i-1]
  r = pi[i+1]
  check += 1 if [l,r,pi[i]].sort[1] == pi[i]
end
puts check
