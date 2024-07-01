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

H,W=get_i
s=array(H)
H.times do|i|
    s[i]=get_nsp
end
Dir_=[[1,0],[0,1],[-1,0],[0,-1]]
ans=true
H.times do|i|
    W.times do|j|
      next unless s[i][j]=="#"
      flag=false
      Dir_.each do|x,y|
        nx=j+x
        ny=i+y
        next unless nx.between?(0,W-1) and ny.between?(0,H-1) and s[ny][nx]=="#"
        flag=true
      end
      unless flag
          ans=false
          break
      end
    end
end

puts yn_judge(ans)