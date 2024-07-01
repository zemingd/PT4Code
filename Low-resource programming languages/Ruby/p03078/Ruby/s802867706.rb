x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

l = b.reduce([]) {|list, bi| list + a.map {|li| li + bi}}
ll = c.reduce([]) {|list, ci| list + l.map {|li| li + ci}}
ll.sort!.reverse!
k.times do |i|
  p ll[i]
end