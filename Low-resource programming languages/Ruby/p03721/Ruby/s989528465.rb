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


n,k=gets.split.map(&:to_i)
s=make2d(n,2)
for i in 0..n-1
  a,b=gets.split.map(&:to_i)
  s[i][0]=a
  s[i][1]=b
end
s.sort!

sum=0
for i in 0..n-1
  sum=sum+s[i][1]
  if sum>=k
    puts s[i][0]
    break
  end
end
