n,m=gets.split.map(&:to_i)
x=gets.split.map(&:to_i).sort
puts x[1..-1].map.with_index {|m,i| m - x[i]}.sort[0..-n].inject(:+).to_i