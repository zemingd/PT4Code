# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp

P,Q,R=gets.split.map(&:to_i)
puts P+Q+R-[P,Q,R].max