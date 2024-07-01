N,*ts=$<.read.split.map(&:to_i)

puts ts.inject(&:lcm)
