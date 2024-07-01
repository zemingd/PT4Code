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
ch=Array.new(C){[]}
N.times do|i|
    s,t,c=get_i.map{|x| x-=1}
  ch[c]<<[s,t]
end
imos=array(10**5+2,0,C)
ch.each_with_index do|arr,i|
  table=array(10**5+1,0)
  arr.each do|s,t|
      table[s]+=1
      table[t+1]-=1
  end  
  imosi=imos[i]
  (10**5+1).times do|j|
      imosi[j+1]=max(min(imosi[j]+table[j],1),0)
  end
end
ans=0
(10**5+1).times do|i|
    val=0
    C.times do|j|
      val+=imos[j][i]
    end
    ans=max(ans,val)
end
puts ans