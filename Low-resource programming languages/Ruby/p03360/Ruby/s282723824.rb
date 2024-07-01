abc = gets.split.map(&:to_i).sort
abc[2] = 2 * gets.to_i * abc[2]
puts abc.inject(:+)