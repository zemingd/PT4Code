a=Array.new(4,nil)
4.times{|i|
a[i]=Array.new(3,nil)
3.times{|j| a[i][j] = Array.new(10,0)}}
gets.to_i.times{
b,f,r,v=gets.split.map &:to_i
a[b-1][f-1][r-1]+=v
}
4.times{|i|
3.times{|j| puts"#{a[i][j]*' '}"}
if i!=3
puts"#"*20
end
}
puts