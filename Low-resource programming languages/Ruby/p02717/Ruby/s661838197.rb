n,m = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i).sort
minVote = a.sum / (4*m)
answer = true
m.times do 
    compare = a.pop
    answer = false if compare <= minVote
end

puts answer ? 'Yes' : 'No'


