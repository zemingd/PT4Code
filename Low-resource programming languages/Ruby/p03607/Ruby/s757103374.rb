gets;p (a=[*$<].map(&:to_i)).uniq.count{|i|a.count{|j|i==j}%2>0}