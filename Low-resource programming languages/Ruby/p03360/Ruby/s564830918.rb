abc = gets.chomp.split.map(&:to_i)
K = gets.to_i

K.times{abc[abc.index(abc.max)] *= 2}

p abc.inject(:+)