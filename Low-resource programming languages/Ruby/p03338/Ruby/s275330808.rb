require 'set'
N=gets.to_i
S=gets.chop
p (N-1).times.map{|x|(Set.new(S[0..x].chars) & Set.new(S[(x+1)..-1].chars)).size}.max