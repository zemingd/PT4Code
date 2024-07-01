a,b=gets.split.map(&:to_i)
puts [*1..12].product([*1..12]).select {|i,j| i<=a && j<=b}.count{|i,j|i==j}