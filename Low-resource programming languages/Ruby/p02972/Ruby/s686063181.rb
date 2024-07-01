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
a=get_i
(N/2).downto(1) do|i|
  cnt=0
  x=i
  while x<=N
    cnt+=a[x-1] 
    x+=i
  end
  if a[i-1]!=cnt%2
      a[i-1]+=1
      a[i-1]%=2
  end
end
ans=[]
a.each_with_index{|x,i| ans<<i+1 if x==1}
puts ans.size
puts ans.join(" ") unless ans.nil?