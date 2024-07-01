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

N,K=get_i
A=get_i
tail=0
res=1
prev=-1
(N-K+1).times do|head|
  while tail<N and tail-head!=K
    res*=A[tail]
    tail+=1 
  end
  if prev==-1
      prev=res
  else
      if prev<res
        puts "Yes"
      else
        puts "No"
      end
      prev=res
  end
  res/=A[head]
end