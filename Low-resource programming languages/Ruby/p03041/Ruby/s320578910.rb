#! /usr/bin/env ruby

N, K = gets.chop.split.map(&:to_i)
S = gets.chop

S[K-1] = S[K-1].downcase

puts S