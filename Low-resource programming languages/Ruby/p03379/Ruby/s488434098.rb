n=gets.to_i
x=gets.split.map &:to_i
a=x.sort
x.each{|e|
    i=a.index(e)
    #p i
    if i<n/2
        p a[n/2]
    else
        p a[n/2-1]
    end
}