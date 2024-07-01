ans = []
N,M= gets.split(' ').map(&:to_i)
M.times{
    a,b=gets.split(' ').map(&:to_i)
    ans << a
    ans << b
}

N.times{|i|
    puts ans.count(i+1)
}