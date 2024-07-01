n,*xs=$<.read.split.map &:to_i
q=(xs.reduce(&:+)*2+n)/(n*2)
puts xs.reduce(0){|s,e| s+(e-q)**2 }