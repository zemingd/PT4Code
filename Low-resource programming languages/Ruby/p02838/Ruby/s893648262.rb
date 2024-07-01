n,*a=$<.read.split.map(&:to_i)
p (0..60).inject(0){|s,i|
  c = a.count{|t|t[i]==0}
  (s+((n-c)*c<<i))%1000000007
}