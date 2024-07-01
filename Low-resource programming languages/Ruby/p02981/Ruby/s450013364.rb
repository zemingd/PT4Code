def min2(a,b)
    return a>b ? b : a
end
def max2(a,b)
    return a<b ? b : a
end

N,A,B = gets.split.map{|i| i.to_i}


puts min2(A*N,B)