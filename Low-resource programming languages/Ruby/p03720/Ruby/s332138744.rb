def make1d(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = 0
  end
  a
end

def make2d(height,width)
  a = Array.new(height)
  for i in 0..(height-1)
    a[i] = make1d(width)
  end
  a
end
 def min(a, b)
   (a < b) ? a : b
 end

# version 1.4
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/


n,m=gets.split.map(&:to_i)
s=make1d(n+1)
m.times{
  a,b=gets.split.map(&:to_i)
  s[a]=s[a]+1
  s[b]=s[b]+1
}
for i in 1..n
  puts s[i]
end

