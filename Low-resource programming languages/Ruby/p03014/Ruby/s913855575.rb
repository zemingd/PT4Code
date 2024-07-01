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
l=array(W+1,0,H)
r=array(W+1,0,H)
t=array(W,0,H+1)
b=array(W,0,H+1)
H.times do|i|
    l[i][0]=0
    r[i][0]=0
    W.times do|j|
      if s[i][j]=="#"
          l[i][j+1]=0
      else
          l[i][j+1]=l[i][j]+1
      end 
        if s[i][W-j-1]=="#"
          r[i][j+1]=0
        else
            r[i][j+1]=r[i][j]+1
        end
    end
end
W.times do|j|
    t[0][j]=0
    b[0][j]=0
    H.times do|i|
        if s[i][j]=="#"
            t[i+1][j]=0
        else
            t[i+1][j]=t[i][j]+1
        end
        if s[H-1-i][j]=="#"
            b[i+1][j]=0
        else
            b[i+1][j]=b[i][j]+1
        end
    end
end
ans=0
H.times do|i|
    W.times do|j|
      val=l[i][j+1]+r[i][W-j]+t[i+1][j]+b[H-i][j]-3
      ans=max(ans,val)
    end
end
puts ans