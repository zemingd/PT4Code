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

$ans=INF
N,K=get_i
M=Math.log10(N).to_i+1
d={}
get_i.each do|i|
    d[i]=1
end

def dfs(now,s,d)
  if now==M
      $ans=s.to_i if s.to_i>=N and $ans>s.to_i
      return
  end
  0.upto(9) do|i|
      if d[i].nil?
        dfs(now+1,s+i.to_s,d)
    end
  end
end
dfs(0,"",d)
puts $ans