p eval"1.upto(%d).select{|i|i.to_s.split('').map(&:to_i).sum.between?(%d,%d)}.inject(:+)"%gets.split
