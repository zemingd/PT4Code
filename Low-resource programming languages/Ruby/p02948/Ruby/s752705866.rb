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

class PriorityQueue
    attr_accessor:heap,:n
    def initialize(n)
        @n=0
        @heap=array(n,[-1,-1])
    end

    def push(x)
      i=@n
      @n+=1
      while i>0
          p=(i-1)/2
          break if @heap[p][1]<=x[1]
          @heap[i]=@heap[p]
          i=p
      end
      @heap[i]=x
    end

    def pop()
        ret=@heap[0]
        @n-=1
        x=@heap[@n]
        i=0
        while i*2+1<@n
            l=i*2+1
            r=i*2+2
            l=r if r<@n and @heap[l][1]>@heap[r][1]
            break if @heap[l][1]>=x[1]
            @heap[i]=@heap[l]
            i=l
        end
        @heap[i]=x
        return ret
    end
end

N,M=get_i
pq=PriorityQueue.new(N)
N.times do
  ab=get_i
  ab[1]*=-1
  pq.push(ab)
end
ans=0
M.downto(1) do|i|
  until pq.n.zero?
      x=pq.pop
      if x[0]<=i
          ans-=x[1]
          break
      end
  end
end
puts ans