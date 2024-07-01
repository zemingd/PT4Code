n,m=gets.split.map &:to_i
cnt=Array.new(n,0)
m.times{
    a,b=gets.split.map &:to_i
    cnt[a-1]+=1
    cnt[b-1]+=1
}
cnt.each{|n|p n}