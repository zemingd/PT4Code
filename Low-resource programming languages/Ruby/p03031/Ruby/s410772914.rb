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

N,M=get_i
ks=array(M)
M.times do|i|
    ks[i]=get_i
end
p=get_i
ans=0
(2**N).times do|bit|
    switch=array(N,false)
    N.times do|i|
        unless (bit&(2**i)).zero?
          switch[i]=true
        end
    end
    flag=true
    M.times do|i|
        val=0
        ks[i][0].times do|k|
          if switch[ks[i][k+1]-1]
              val+=1
          end       
        end
        if val%2!=p[i]
            flag=false
            break
        end
    end
    if flag
        ans+=1
    end
end
puts ans