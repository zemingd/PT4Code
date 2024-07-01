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

N,C=get_i
table=array(10**5+1,0)
N.times do|i|
  s,t,c=get_i
  s-=1
  t-=1
  table[s]+=1
  table[t+1]-=1
end
imos=array(10**5+2,0)
ans=0
(10**5+1).times do|i|
    imos[i+1]+=imos[i]+table[i]
    ans=max(ans,imos[i+1])
end
#p imos[0..20]
puts ans