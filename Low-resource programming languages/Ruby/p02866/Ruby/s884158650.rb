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

MOD=998244353
N=gets.to_i
D=get_i
unless D[0].zero?
    puts 0
    exit
end
kind=Hash.new(0)
D.each do|d|
    kind[d]+=1
end
kind=kind.sort{|x,y| x[0]<=>y[0]}
if kind[0][1]!=1
    puts 0
    exit
end
M=kind.size
ans=1
(M-1).times do|i|
    if kind[i][0]!=kind[i+1][0]-1
        puts 0
        exit
    end
  ans=(ans*kind[i][1]**kind[i+1][1])
  ans%=MOD
end
puts ans