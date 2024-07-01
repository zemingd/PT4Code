_ = gets
*takos = gets.chomp.split(' ').map(&:to_i)

sum = 0
takos.combination(2){|a,b| sum += (a*b)}
print sum