r = [gets.split, gets.split.map(&:to_i)].transpose.to_h
r[gets] -= 1
puts r.each_value.to_a.join(' ')