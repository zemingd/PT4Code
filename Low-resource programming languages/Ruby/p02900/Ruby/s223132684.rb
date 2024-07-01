require 'prime'
A,B = gets.split.map(&:to_i)
a = 2.step(A).select {|i| A % i == 0 }
b = 2.step(B).select {|i| B % i == 0 }
puts (a & b).count {|n| Prime.prime?(n) } + 1
