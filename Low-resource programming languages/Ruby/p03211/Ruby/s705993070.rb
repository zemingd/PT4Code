n=gets.to_i;p n.to_s.chars.each_cons(3).to_a.map(&:join).map(&:to_i).map{|i|i-753}.map(&:abs).sort.shift
