ports = gets.split("\s").map(&:to_i)
p ports.inject(:+) - ports.max