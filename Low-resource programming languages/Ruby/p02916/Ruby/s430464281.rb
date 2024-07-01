n,a,b,c=$<.map{_1.split.map &:to_i}
p b.sum+(0..n-2).sum{|i|a[i]+1==a[i+1] ? c[a[i]-1] : 0}