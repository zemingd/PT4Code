N, H = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

puts A.inject(:+) >= N ? 'Yes' : 'No'
