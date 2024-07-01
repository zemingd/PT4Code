p gets.split[0].to_i.times.map{gets.split[1..-1].map &:to_i}.reduce{|sum,a|sum&a}.size
