a,b=gets.split.map(&:to_i)
cs= [*1..12].product([*1..31]).select {|i,j| i<=a && j<=b}
puts cs.count{|i,j|i==j}