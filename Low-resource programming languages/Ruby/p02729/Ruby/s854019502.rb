# coding: utf-8
N, M = gets.split.map {|e| e.to_i}

evena = Array.new(N, 2)
odda = Array.new(M, 1)

a = evena + odda

puts a.combination(2).map{|e|e.reduce(&:+)}.select{|e| e.even?}.size

