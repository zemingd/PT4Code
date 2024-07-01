require 'pp'
n = gets.to_i
s = gets.chomp.chars
p s.chunk_while{|a,b|a == b}.to_a.size
