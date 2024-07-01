puts gets.to_i.times.map{ gets.to_i }.inject{|a, b| a.lcm(b) }
