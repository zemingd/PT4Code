N=gets.to_i
X=gets.split.map(&:to_i)
x=X.sort[N/2-1,2]
warn x.inspect
N.times{|i|
    if X[i]<=x[0]
        puts x[1]
    else
        puts x[0]
    end
}
