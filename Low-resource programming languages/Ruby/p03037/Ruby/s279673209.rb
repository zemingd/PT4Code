n,m=gets.shomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
c=gets.chomp.split.map(&:to_i)
k=(b[0]..b[1]).to_a&(c[0]..c[1]).to_a

(m-2).times{
  b=gets.chomp.split.map(&:to_i)
  k+=k&(b[0]..b[1]).to_a
}
puts k.length