require 'matrix'
a,b=$<.map{|m|m.split.map(&:to_i)}
p -Matrix[a,b].det