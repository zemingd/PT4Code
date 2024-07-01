n=gets.to_i
x=gets.chomp.chars.map &:to_i
b=x.count(1)
if b==0
  n.times{ puts 0 }
  exit
end
h=[0]
f=->x{
  t=h[x] and return t
  pc=x.to_s(2).chars.count(?1)
  return h[x]=f[x%pc]+1
}
#p [n,x,b]
rp=rm=0
rps,rms=[0]*n,[0]*n
tp=1
tm=tp=1
if b>2
  (n-1).downto(0){|i|
    rps[i]=tp
    rms[i]=tm
    if x[i]==1
      rp=(rp+tp)%(b+1)
      rm=(rm+tm)%(b-1)
    end
    tp=tp*2%(b+1)
    tm=tm*2%(b-1)
  }
else
  (n-1).downto(0){|i|
    rps[i]=tp
    if x[i]==1
      rp=(rp+tp)%(b+1)
    end
    tp=tp*2%(b+1)
  }
end
#p [rp,rm,rps,rms]
n.times{|i|
  if x[i]==0
    puts 1+f[(rp+rps[i])%(b+1)]
  elsif b==1
    puts 0
  else
    puts 1+f[(rm-rms[i])%(b-1)]
  end
}