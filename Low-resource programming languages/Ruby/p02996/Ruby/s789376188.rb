As, Bs = readlines.drop(1).map{|l| l.split.map(&:to_i)}.transpose

as = As.sort.inject([0]){|s, a| s << s.last + a}.drop(1)
bs = Bs.sort
puts as.zip(bs).all?{|a, b| a <= b} ? 'Yes' : 'No'