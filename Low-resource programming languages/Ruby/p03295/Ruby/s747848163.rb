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
ab=array(M)
M.times do|i|
    ab[i]=get_i
    ab[i][0]-=1
    ab[i][1]-=1
end
ab.sort!{|x,y| x[1]<=>y[1]}
ans=0
prev=-1
M.times do|i|
  unless ab[i][0]<prev and prev<=ab[i][1]
      ans+=1
      prev=ab[i][1]
  end
end
puts ans