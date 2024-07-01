#input of int(split by space)
def get_i()
  return gets.chomp.split(" ").map(&:to_i)
end
#input of float(split by space)
def get_f()
  return gets.chomp.split(" ").map(&:to_f)
end
#input of string(split by space)
def get()
  return gets.chomp.split(" ")
end
#input of string(split per one character)
def get_nsp()
  return gets.chomp.split("")
end
#yes or no decision
def yn_judge(bool,y="Yes",n="No")
  return bool ? y : n 
end
#create of array
def array(size1,init=nil,size2=-1)
  if size2==-1
      return Array.new(size1){init}
  else
      return Array.new(size2){Array.new(size1){init}}
  end
end

def max(a,b)
    return a>b ? a : b
end

def min(a,b)
    return a>b ? b : a
end

INF=Float::INFINITY

N=gets.to_i
X=get_nsp.map(&:to_i)
def modinv(a,m)
    b=m
    u=1
    v=0
    while(b>0)
        t=a/b
        a-=t*b
        a,b=b,a
        u-=t*v
        u,v=v,u
    end
    u%=m
    u+=m if u<0
    return u
end
def f(a,x)
    a%=x
    return 1 if a.zero?
    return f(a,a.to_s(2).count("1"))+1
end
M=X.count(1)
x1=0
x2=0
b1=1
b2=1
beki1=array(N)
beki2=array(N)
r=0
k=0
X.reverse.each_with_index do|x_,i|
    x1+=x_*b1
    x1%=M+1
    beki1[i]=b1
    b1*=2
    b1%=M+1
    x2+=x_*b2
    x2%=M-1
    beki2[i]=b2
    b2*=2
    b2%=M-1
end
N.times do|i|
    if X[i]==1
      t=x2
      t-=beki2[N-1-i]
      t+=M-1 if t<0
      puts f(t,M-1)
    else
      t=x1
      t+=beki1[N-1-i]
      t-=M+1 if t>M+1
      puts f(t,M+1)
    end
    #puts  "t:#{t*modinv(t,M)}"
end