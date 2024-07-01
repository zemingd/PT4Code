require 'prime'

N = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
a.each {|b| b.prime_division.select{|c| c[0] == 2 }.count {|d| cnt += d[1]} }
puts cnt