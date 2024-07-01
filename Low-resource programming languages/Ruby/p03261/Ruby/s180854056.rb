a={}
s=""
res="Yes"
gets.to_i.times {
    t=gets.chomp
    res="No" if a[t] || (s>"" && s[-1]!=t[0])
    a[s=t]=true;
}
puts res
