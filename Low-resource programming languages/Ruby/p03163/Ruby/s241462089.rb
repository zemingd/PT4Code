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
    return [init]*size1
  else
    return [[init]*size2]*size1
  end
end

def max(a,b)
    return a>b ? a : b
end

def min(a,b)
    return a>b ? b : a
end

INF=Float::INFINITY

N,W=get_i
wv=array(N)
N.times do|i|
  wv[i]=get_i
end
wv.sort!{|x,y| x[0]<=>y[0]}
dp=array(W+1,0)
wv.each do|w,v|
  (W-w).downto(0) do|j|
    dp[j+w]=max(dp[j]+v,dp[j+w])
  end
end
puts dp[W]