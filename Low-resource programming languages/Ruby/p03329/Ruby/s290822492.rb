p (0..n=gets.to_i).map{|i|eval (i.to_s(6)+(n-i).to_s(9)).chars*?+}.min