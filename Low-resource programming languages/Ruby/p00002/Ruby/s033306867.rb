loop do puts gets.split.map{|i| i.to_i}.inject { |s, n| s+=n }.to_s.size end