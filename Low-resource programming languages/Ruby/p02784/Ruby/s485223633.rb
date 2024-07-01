H,N,*A = $<.read.split.map(&:to_i)
puts(H<=A.inject(:+)?'Yes':'No')
