N,M = gets.split.map(&:to_i)
x = (1..M).to_a
N.times{
    a = gets.split.map(&:to_i)
    x = x & a[1..-1]
}

puts x.size