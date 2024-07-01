# frozen_string_literal: true

n, k = gets.split.map &:to_i
p = gets.split.map &:to_i
arr = []
p.each_cons(k){|ar| arr << ar.inject(:+)}
puts (arr.max+k)/2.0