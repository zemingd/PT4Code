require "matrix"
n,m,l=gets.split.map(&:to_i)
a,b=[],[];ans=Array.new(n).map{Array.new(l,0)}
n.times{a<< gets.split.map(&:to_i)};a=Matrix[*a]
m.times{b<< gets.split.map(&:to_i)};b=Matrix[*b]
(a*b).to_a.map{|aa|puts aa.join(" ")}

