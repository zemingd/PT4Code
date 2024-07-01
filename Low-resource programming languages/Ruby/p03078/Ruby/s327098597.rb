_, _, _, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ab = a.product(b).map { |a, b| a + b }
ab.sort!.reverse!

abc = ab.take(k).product(c).map { |ab, c| ab + c }
abc.sort!.reverse!

p(*abc.take(k))
