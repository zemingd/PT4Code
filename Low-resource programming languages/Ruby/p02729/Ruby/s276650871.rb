a=gets.chomp.split.map(&:to_i)
b=[*1..a[0]]

c=b.combination(2).to_a
d=[*1..a[1]].combination(2).to_a.length
puts c.length+d
