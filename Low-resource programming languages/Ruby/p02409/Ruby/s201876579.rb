a=Array.new(4).map{Array.new(3).map{Array.new(10,0)}}
gets
while gets
b,f,r,v=$_.split.map &:to_i
a[b-1][f-1][r-1]+=v
end
puts a.map{|b|b.map{|f|f*' '}*$/}*("\n"+?#*20+"\n")