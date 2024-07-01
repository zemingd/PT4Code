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

S=get_nsp
T=get_nsp
N=S.size
ab=Array.new(N){Hash.new(-1)}
N.times do|i|
  unless i.zero?
      ("a".."z").to_a.each do|c|
        ab[N-i-1][c]=ab[N-i][c]
    end
  end
  ab[N-i-1][S[N-i-1]]=N-1-i
end
N.times do|i|
    ("a".."z").to_a.each do|c|
        ab[N-i-1][c]=ab[0][c] if ab[0][N-i-1]==-1
    end
end
prev=-1
k=0
#p ab[0]
T.each do|t|
    if ab[(prev+1)%N][t]==-1
        puts "-1"
        exit
    elsif prev+1==N or prev+1>ab[prev+1][t]
        prev=ab[prev+1][t]
        k+=1
    else
        prev=ab[prev+1][t]
    end
end
puts k*N+prev+1