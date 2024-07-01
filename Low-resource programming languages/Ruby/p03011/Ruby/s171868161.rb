p, q, r = gets.split.map(&:to_i)

list = []
list << p+q
list << p+r
list << q+r
p list.min
