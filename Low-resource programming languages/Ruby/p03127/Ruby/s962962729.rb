gets
a = gets.split.map(&:to_i).uniq.sort
p a.inject(:gcd)