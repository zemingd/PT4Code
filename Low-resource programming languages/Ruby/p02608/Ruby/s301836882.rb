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
def cal(x,y,z)
    return x**2+y**2+z**2+x*y+y*z+z*x
end
ans=array(N+1,0)
1.upto(100) do|x|
    1.upto(100) do|y|
        1.upto(100) do|z|
          next if cal(x,y,z)>N
          ans[cal(x,y,z)]+=1
        end
    end
end
1.upto(N) do|i|
    puts ans[i]
end