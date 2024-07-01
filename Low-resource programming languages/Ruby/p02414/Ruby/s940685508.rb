require 'matrix'
N, M, L = gets.split.map &:to_i
A = Matrix[* (1..N).map{ gets.split.map(&:to_i)}]
B = Matrix[* (1..M).map{ gets.split.map(&:to_i)}]
puts (A * B).to_a.map{|e| e * ' '}