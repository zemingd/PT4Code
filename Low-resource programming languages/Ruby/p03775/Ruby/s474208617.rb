N = gets.to_i

require 'prime'
puts (N.prime? ? N : Math.sqrt(N).ceil.upto(N).find{|n| N % n == 0}).to_s.length