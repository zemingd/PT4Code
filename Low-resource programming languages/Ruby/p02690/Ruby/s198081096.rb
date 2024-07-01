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

X=gets.to_i
root5=(X**(1.0/5.0)).to_i
#p root5
table=array(root5+1,0)
1.upto(root5) do|i|
    table[i]=i**5
end
ans=nil
0.upto(root5) do|x|
  0.upto(root5) do|y|
    if table[x]-table[y]==X
        ans=[x,y]
    elsif table[x]+table[y]==X
        ans=[x,-y]
    end
  end
end
puts ans.join(" ")