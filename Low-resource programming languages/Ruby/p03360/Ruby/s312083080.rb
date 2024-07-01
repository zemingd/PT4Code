x = gets.split.map(&:to_i)
t = gets.to_i
x = x.sort.reverse
t.times{
   x[0] = x[0]*2
}
puts x.inject(:+)