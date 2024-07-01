require "prime"
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
A=get_i
#N=10**6
#A=(1..N).to_a
num=A.tally
flag=true
seen=array(10**6+1,false)
2.upto(10**6) do|x|
  cnt=0
  k=x
  next if seen[k]
  while k<=10**6 and cnt<=1
      cnt+=num[k] unless num[k].nil?
      seen[k]=true
      k+=x
  end 
  if cnt>1
      flag=false
      break
  end
end
if flag
    puts "pairwise coprime"
else
    if A.inject(0){|res,x| res=res.gcd(x)}==1
        puts "setwise coprime"
    else
        puts "not coprime"
    end
end