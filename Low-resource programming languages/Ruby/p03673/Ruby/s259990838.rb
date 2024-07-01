N = gets.to_i
As = gets.split.map(&:to_i)

puts N.times.inject([]){|bs, i| (bs << As[i]).reverse}.join(' ')