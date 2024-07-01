gets
a=gets.split.map(&:to_i)
 
r = a.reduce(1){|a,b| 
    b < 0 ? -1 :
    a * b > 10**18 ? -1 :
    a * b
}
 
if r > 10**18
    print -1
else
    print r
end