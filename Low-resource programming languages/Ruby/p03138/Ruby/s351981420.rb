N,K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

def xor(x,y)
  s1 = x.to_s(2)
  s2 = y.to_s(2)
  d = s1.size - s2.size
  zero = "0"
  s = zero*(d.abs)
  if d > 0
    s2 = s + s2
  elsif d < 0
    s1 = s + s1
  end

  s3 = ""

  s2.size.times{ |i|
    s3 << ((s1[i].to_i + s2[i].to_i)%2).to_s
   }
  
  z = s3.to_i(2)
  
  return z
end

m = []
n = []

if K == 0
  h = []
  N.times{|j|
	  h << xor(0,a[j])
  }
  puts h.inject(:+)
  exit
end


K.times{|i|
  f = []
  N.times{|j|
	  f << xor(i,a[j])
  }
  m << f.inject(:+)
}
  
m.sort!

puts m[-1]