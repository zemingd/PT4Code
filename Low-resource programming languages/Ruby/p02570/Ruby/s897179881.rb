d,t,s = gets.chomp.split(' ').map(&:to_i)

p t * s >= d ? 'Yes' : 'No'