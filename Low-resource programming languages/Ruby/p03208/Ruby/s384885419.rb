N,K = gets.split.map(&:to_i)
T = N.times.map{gets.to_i}.sort
puts (0 .. N - K).map{|i| T[K + i - 1] - T[i]}.min