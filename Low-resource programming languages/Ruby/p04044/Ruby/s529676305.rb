N,L = gets.chomp.split.map(&:to_i)
Ss = N.times.map{gets.chomp}.sort
puts Ss.join
