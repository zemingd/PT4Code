N, *TS = $stdin.read.split.map(&:to_i)
p TS.inject{|t1, t2| t1.lcm(t2)}
