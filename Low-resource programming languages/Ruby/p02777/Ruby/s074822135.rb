s,t = gets.split(' ')
a,b = gets.split(' ').map(&:to_i)
u = gets.chomp
puts u == s ? [a-1,b].join(' ') : [a,b-1].join(' ')