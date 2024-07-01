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
input=array(M)
pref=array(N)
M.times do|i|
  input[i]=get_i
  p,y=input[i][0],input[i][1]
  p-=1
  pref[p]=[] if pref[p].nil?
  pref[p].push(y)
end
ans={}
pref.each_with_index do|arr,i|
    next if arr.nil?
    arr.sort!
    arr.each_with_index do|y_,j|
        ans[y_]=(i+1).to_s.rjust(6,"0")+(j+1).to_s.rjust(6,"0")
    end
end
input.each do|p,y|
    puts ans[y]
end