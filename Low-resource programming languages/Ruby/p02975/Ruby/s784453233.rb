N,*as=$<.read.split.map(&:to_i)
puts (as.inject(:^) == 0 ? 'Yes' : 'No')