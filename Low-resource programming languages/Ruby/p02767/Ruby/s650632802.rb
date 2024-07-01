a=readlines.map(&:chomp)
b=a[1].split.map(&:to_i)
c=(b.sum/a[0].to_i)
d1=b.sum {|e|(e-c)**2}
d2=b.sum {|e|(e-c-1)**2}
d3=b.sum {|e|(e-c+1)**2}
puts [d1, d2, d3].min