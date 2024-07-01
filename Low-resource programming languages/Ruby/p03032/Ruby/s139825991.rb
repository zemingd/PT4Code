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
V=get_i
R=min(N,K)
ans=-INF
(R+1).times do|a|
    (R-a+1).times do|b|
      val=[]
      a.times do|i|
          val<< V[i] 
      end 
      (N-1).downto(N-b) do|i|
          val<< V[i]
      end
      val.sort!
      res=0
      k=K-(a+b)
      val.each do|v|
          if v<0 and k>0
              k-=1
          else
              res+=v
          end
      end
      ans=max(ans,res)
    end
end
puts ans