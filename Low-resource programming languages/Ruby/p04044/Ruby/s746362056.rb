n, m=gets.split.map &:to_i
a=[]
n.times {
    a<<gets.chomp
}
puts a.sort.inject(:+)
