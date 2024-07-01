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
s=array(M)
M.times do|i|
  s[i]=get_i
end
p=get_i
ans=0
(2**N).times do|bit|
    switch=array(N,0)
    N.times do|i|
        unless (bit&(2**i)).zero?
          switch[i]=1
        end
    end
    flag=true
    M.times do|i|
        cnt=0
        s[i][0].times do|j|
          cnt+=switch[s[i][j+1]-1]   
        end
        if cnt%2!=p[i]
            flag=false
            break
        end
    end
    ans+=1 if flag
end
puts ans