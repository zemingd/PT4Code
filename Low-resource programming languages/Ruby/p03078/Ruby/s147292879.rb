k=gets.split(' ').last.to_i
a=gets.split(' ').map(&:to_i)
b=gets.split(' ').map(&:to_i)
c=gets.split(' ').map(&:to_i)

r= a.product(b, c).map {|l|l.inject(:+) }
puts r.sort.reverse[0...k]
