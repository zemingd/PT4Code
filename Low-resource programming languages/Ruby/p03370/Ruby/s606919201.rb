N,X=gets.split.map(&:to_i)
min=1000
sum=0
N.times{
    m=gets.to_i
    sum+=m
    if min>m
        min=m
    end
}
puts N+(X-sum)/min
