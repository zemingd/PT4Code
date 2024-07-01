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

H,W=get_i
s=array(H)
H.times do|i|
  s[i]=get_nsp
end
Direct=[[1,0],[0,1],[-1,0],[0,-1]]
def bfs(map,s)
  cost=array(W,-1,H)
  que=[]
  que.push(s)
  cost[s[1]][s[0]]=0
  until que==[]
    p=que.shift
    Direct.each do|x,y|
        nx=p[0]+x
        ny=p[1]+y
        next unless nx.between?(0,W-1) and ny.between?(0,H-1) and map[ny][nx]=="." and cost[ny][nx]==-1
        cost[ny][nx]=cost[p[1]][p[0]]+1
        que.push([nx,ny])
    end
  end  
  return cost.flatten.max
end
ans=0
H.times do|i|
    W.times do|j|
        if s[i][j]=="."
            val=bfs(s,[j,i])
            ans=val if ans<val
        end
    end
end
puts ans