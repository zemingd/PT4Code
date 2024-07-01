p (1..gets.to_i).select{|i| i.odd? && (1..i).count{|j| i%j==0} == 8 }.count
