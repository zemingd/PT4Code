tmp = gets.chomp.split.map(&:to_i)
a = tmp[0]
b = tmp[1]
answer = []
c= a/b.to_f
d = c.round(8)
# p "c =#{c}"
answer.push(a/b)
answer.push(a%b)
answer.push(sprintf( "%.8f", d ))

puts answer.join(' ')