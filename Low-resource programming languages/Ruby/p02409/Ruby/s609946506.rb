a=(1..4).map{(1..3).map{[0]*10}}
gets.to_i.times{
b,f,r,v=gets.split.map &:to_i
a[b-1][f-1][r-1]+=v
}
4.times{|i|
3.times{|j| puts" #{a[i][j]*' '}"}
if i!=3
puts"#"*20
end
}