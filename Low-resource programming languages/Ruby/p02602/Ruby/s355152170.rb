(n,k)=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

r = a.each_cons(k+1).map{|x| 
    x[0]  < x[-1] ? 'Yes' : 'No'
}


print r.join("\n")