n,m = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i).sort.reverse
minVote = a.sum / (4.0*m)

puts a[m-1] >= minVote ? 'Yes' : 'No'