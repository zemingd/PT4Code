As, Bs = readlines.drop(1).map{|l| l.split.map(&:to_i)}.transpose

bs, is = Bs.each_with_index.sort.transpose
as = is.map{|i| As[i]}.inject([0]){|s, a| s << s.last + a}.drop(1)
puts as.zip(bs).all?{|a, b| a <= b} ? 'Yes' : 'No'