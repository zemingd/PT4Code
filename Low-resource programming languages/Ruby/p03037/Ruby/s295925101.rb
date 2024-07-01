N,M=gets.split.map &:to_i
l=0
r=10000
M.times{
    a,b=gets.split.map &:to_i
    l = a if l < a
    r = b if r > b
}
puts r-l+1
