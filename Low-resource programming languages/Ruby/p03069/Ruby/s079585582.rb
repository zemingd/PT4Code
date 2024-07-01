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
S=get_nsp
if S.count("#")==N or S.count(".")==N
    puts 0
    exit
end
r=array(N,0)
l=array(N,0)
r[0]=1 if S[0]=="#"
(N-1).times do|i|
  r[i+1]=r[i]
  r[i+1]+=1 if S[i+1]=="#"
end

l[0]=1 if S[N-1]=="."
(N-1).times do|i|
    l[i+1]=l[i]
    l[i+1]+=1 if S[N-2-i]=="."
end
min=INF
N.times do|i|
  min=min(min,l[i]+r[i])
end
puts min