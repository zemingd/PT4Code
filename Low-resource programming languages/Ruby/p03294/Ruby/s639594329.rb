N,*as=$<.read.split.map(&:to_i)

m = as.inject(&:lcm) - 1
ret = as.inject(0) {|n,a| n+(m%a)}

puts ret
