n=gets.to_i
res={}
n.times{
    s=gets.chomp
    res[s]||=0
    res[s]+=1
}
puts ["AC", "WA", "TLE", "RE"].map{ "#{_1} x #{res[_1]||0}"}
