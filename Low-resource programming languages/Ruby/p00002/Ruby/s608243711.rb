#!ruby -anl
p $F.map(&:to_i).reduce(:+).to_s.size