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

s=get_nsp
k=gets.to_i
N=s.size
ab=("a".."z").to_a
N.times do|i|
    if s[i]!="a" and k>="z".ord-s[i].ord+1
      k-="z".ord-s[i].ord+1
      s[i]="a"
    end
end
if k>0
  s[N-1]=ab[(s[N-1].ord-"a".ord+k)%26]
end
puts s.join("")