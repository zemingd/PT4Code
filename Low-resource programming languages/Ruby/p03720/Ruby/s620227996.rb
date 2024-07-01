N, M = gets.split.map(&:to_i)
T = Array.new(M){gets.split.map(&:to_i)}.flatten

A = Array.new(N){|i|T.count(i+1)}
puts A
