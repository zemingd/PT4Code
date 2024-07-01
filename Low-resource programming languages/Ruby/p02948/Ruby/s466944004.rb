def get_i() #空白区切の入力を数値(整数)の配列で返す
  return gets.chomp.split(" ").map(&:to_i)
end
def get_f() #空白区切の入力を数値(実数)の配列で返す
  return gets.chomp.split(" ").map(&:to_f)
end
def get() #空白区切の入力を文字列の配列で返す
  return gets.chomp.split(" ")
end
def get_nsp() #入力されたものを一文字ずつに区切った文字列の配列で返す
  return gets.chomp.split("")
end
def yn_judge(bool,y="Yes",n="No") #boolに真偽を投げることで、trueならy、falseならnの値を出力する
  return bool ? y : n 
end
def array(size1,init=nil,size2=1) #size2に二次元配列時の最初の要素数、size1に次の配列の大きさ、initに初期値を投げることでその配列を返す
  if size2==1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

INF=Float::INFINITY
class PriorityQueue
    attr_accessor:queue,:n
    def initialize(n)
        @n=0
        @queue=array(2,INF,n)
    end

    def push(x)
        i=@n
        @n+=1
        while i>0
          p=(i-1)/2
          break if x[1]>=@queue[p][1]
          @queue[i]=@queue[p]
          i=p
        end
        @queue[i]=x
    end

    def pop()
       ret=@queue[0]
       @n-=1
       x=@queue[@n]
       i=0
       while i*2+1<@n
        l=i*2+1
        r=i*2+2 
        l=r if r<@n and @queue[l][1]>@queue[r][1]
        break if x[1]<=@queue[l][1]
        @queue[i]=@queue[l]
        i=l
       end
       @queue[i]=x
       return ret
    end
end

N,M=get_i
pq=PriorityQueue.new(N)
N.times do|i|
    a,b=get_i
    pq.push([a,-b])
end
ans=0
1.upto(M) do|i|
  restore=[]
  add=0
  while pq.n.nonzero?
      a,b=pq.pop
      add=-b
      break if a<=i
      restore.push([a,b])
      add=0
  end
  if restore!=[]
    restore.each do|a,b|
        pq.push([a,b])
    end
  end
  ans+=add
end
puts ans