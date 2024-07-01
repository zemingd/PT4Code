
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
A=get_i.sort
m=Hash.new(0)
A.each do|a|
    m[a]+=1
end
MAX=A[N-1]
table=array(MAX+1,0)
ans=0
A.each do|a|
  if table[a].zero? and m[a]==1
    ans+=1
  end

    a_=a
    while a_<=MAX
      table[a_]=1
      a_+=a
    end
end
puts ans