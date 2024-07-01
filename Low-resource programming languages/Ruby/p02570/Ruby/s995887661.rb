d,t,s = gets.chomp.split(' ').map(&:to_i)

puts t * s >= d ? 'Yes' : 'No'