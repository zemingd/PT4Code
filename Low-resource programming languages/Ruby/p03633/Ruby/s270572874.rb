N=gets.to_i
r=1
N.times{
    t=gets.to_i
    r=r.lcm(t)
}
puts r
