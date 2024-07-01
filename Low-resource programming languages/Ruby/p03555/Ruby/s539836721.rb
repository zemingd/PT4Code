n,a,b,c=$<.map{|q|q.split.map &:to_i}
x=0
n[0].times do |i|
  d=b.select{|j|j>a[i]}
  d.map{|k|x+=c.count{|l|l>k}}
end
p x
