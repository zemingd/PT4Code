N,K,*X = `dd`.split.map &:to_i
x = 0
f = 0
(0..40).reverse_each{ |k|
  b = 1 << k
  ad = X.map{ |x| (x & b) }
  if x + b > K
    f += ad.reduce(0){ |a,x| a + x }
    next
  end
  a1 = ad.reduce(0){ |a,x| a + (x ^ b) }
  a0 = ad.reduce(0){ |a,x| a + x }
  if a1 > a0
    x += b
    f += a1
  else
    f += a0
  end
}
p f