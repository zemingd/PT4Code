puts (1..gets.to_i).map{|i|gets.split<<i}.sort_by{|s,p|[s,-p.hex]}.map(&:last)