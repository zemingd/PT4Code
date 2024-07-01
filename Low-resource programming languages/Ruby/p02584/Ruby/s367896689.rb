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

X,K,D=get_i
if X.abs<D
    puts (K.even? ? X : D-X)
    exit
end
if X>0 and X-K*D>=0
    puts X-K*D
    exit
elsif X<0 and X+K*D<=0
    puts (X+K*D)*-1
    exit
end
n=(X/D).abs
k=K-n
x=X.abs%D
if k.even?
  puts x
else
    puts D-x
end