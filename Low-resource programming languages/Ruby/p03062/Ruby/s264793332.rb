#!/usr/bin/env ruby

n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

count_mainasu = a.count {|aa| aa < 0}
min = 0
sum_all = a.map {|aa| aa < 0 ? -1 * aa : aa }.tap{|ary| min = ary.min}.map(&:to_i).inject(:+)
ans = count_mainasu%2 == 0 ? sum_all : ( sum_all - 2 * min )

puts ans