C = Hash.new{|h, k| h[k] = 0}
gets.to_i.times{C[gets.to_i] += 1}

puts C.count{|k, v| v.odd?}
