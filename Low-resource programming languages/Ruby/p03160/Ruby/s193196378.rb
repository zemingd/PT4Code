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

N=gets.to_i
h=get_i
dp=array(N,INF)
dp[0]=0
(N-1).times do|i|
    dp[i+1]=min(dp[i]+(h[i]-h[i+1]).abs,dp[i+1])
    dp[i+2]=min(dp[i]+(h[i]-h[i+2]).abs,dp[i+2]) if i+2<N
end
puts dp[N-1]