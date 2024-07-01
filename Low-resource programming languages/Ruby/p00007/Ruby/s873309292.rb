#!ruby -n
p $_.to_i.times.inject(100000){|s,e| (s*1.05/1000).ceil*1000}