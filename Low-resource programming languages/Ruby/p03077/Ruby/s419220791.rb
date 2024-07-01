n=gets.to_i
ns=5.times.map{gets.to_i}
puts n.quo(ns.min).ceil+4
