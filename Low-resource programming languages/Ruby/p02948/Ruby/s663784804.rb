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
        @queue=array(n,INF)
    end

    def push(x)
        i=@n
        @n+=1
        while i>0
          p=(i-1)/2
          break if x>=@queue[p]
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
        l=r if r<@n and @queue[l]>@queue[r]
        break if x<=@queue[l]
        @queue[i]=@queue[l]
        i=l
       end
       @queue[i]=x
       return ret
    end
end

N,M=get_i
pq=PriorityQueue.new(N)
ab=Array.new(M+1){[]}
N.times do|i|
    a,b=get_i
    ab[a].push(b) if M>=a
end
ans=0
1.upto(M) do|i|
    ab[i].each do|b|
        pq.push(-b)
    end
    if pq.n>0
        b=pq.pop
        ans-=b
    end
end
puts ans