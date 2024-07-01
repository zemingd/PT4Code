n,*x=gets(p).split.map(&:to_i)
y=x.sort
med_l,med_r=y[n/2-1,n/2]
x.each{|v|
  puts v>=med_r ? med_l : med_r
}