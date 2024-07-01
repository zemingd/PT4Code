(n,k)=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

r = (0...n-k).map{|i| 
    a[i]  < a[i+k] ? 'Yes' : 'No'
}


print r.join("\n")