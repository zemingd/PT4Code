K,A,B = $<.read.split.map(&:to_i)
puts((A+K-1)/K<=B/K ? 'OK' : 'NG')
