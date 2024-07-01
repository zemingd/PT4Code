n,*d=$<.read.split.map(&:to_i)
a=0
(2**n).times {|x|
  s=x.to_s(2).reverse
  if s.count(?1)==2
    a += d[s.index(?1)]*d[s.rindex(?1)]
  end
}
p a