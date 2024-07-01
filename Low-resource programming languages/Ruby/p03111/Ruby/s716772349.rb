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

N,A,B,C=get_i
l=array(N)
N.times do|i|
    l[i]=gets.to_i
end
ans=INF
(4**N).times do|bit|
  type=Array.new(4){[]}
  t=bit
  N.times do|i|
      type[t%4]<< i
      t/=4
  end
  next unless type[0].size>0 and type[1].size>0 and type[2].size>0
  val=0
  val+=(type[0].size-1)*10+(A-type[0].inject(0){|res,x| res+=l[x]}).abs
  val+=(type[1].size-1)*10+(B-type[1].inject(0){|res,x| res+=l[x]}).abs
  val+=(type[2].size-1)*10+(C-type[2].inject(0){|res,x| res+=l[x]}).abs
  ans=min(ans,val)
end
puts ans