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
Direct=[[1,0],[-1,0],[0,1],[0,-1]]
def bfs(m,init)
    
    cost=array(W,-1,H)
    init.each do|x,y|
        cost[y][x]=0
    end
    que=init
    until que==[]
      p=que.shift
      Direct.each do|x,y|
          nx=p[0]+x
          ny=p[1]+y
          next unless nx.between?(0,W-1) and ny.between?(0,H-1) and cost[ny][nx]==-1
          cost[ny][nx]=cost[p[1]][p[0]]+1
          que.push([nx,ny])
      end
    end
    return cost.inject(0){|res,x| [res,x.max].max}
end
a=array(H)
H.times do|i|
    a[i]=get_nsp
end
black=[]
H.times do|i|
    W.times do|j|
        black.push([j,i]) if a[i][j]=="#"
    end
end
puts bfs(a,black)
