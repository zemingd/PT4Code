N,X=gets.chomp.split.map(&:to_i)
M=N.times.map { gets.chomp.to_i }
a=N
a+=(X-M.sum)/M.min
puts a