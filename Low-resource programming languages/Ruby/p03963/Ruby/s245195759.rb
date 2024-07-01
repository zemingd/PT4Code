line = gets.split(' ')

n = line[0].to_i
k = line[1].to_i

puts k*(k-1)**(n-1)