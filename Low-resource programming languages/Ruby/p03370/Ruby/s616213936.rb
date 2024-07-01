N,X = gets.split.map(&:to_i)
M = N.times.map{gets.to_i}

p N+(X-M.inject(:+))/M.min