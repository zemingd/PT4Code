abc = gets.split.map(&:to_i)
k = gets.to_i

puts abc.max**(k) + abc.inject(:+) - abc.max
