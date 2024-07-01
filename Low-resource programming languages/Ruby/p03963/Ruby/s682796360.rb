a,b=gets.chomp.split.map(&:to_i)
c=b
a-1.times{
  c*=b-1
}
puts c