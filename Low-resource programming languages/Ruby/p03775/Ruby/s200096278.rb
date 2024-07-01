require 'prime'

p gets.to_i.prime_division.flat_map{|i,j|[i]*j}.sort.reverse_each.inject([1,1]){|(a,b),i|[a*i,b].sort}[1].to_s.length