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
    attr_accessor:heap,:n
    def initialize(n)
        @n=0
        @heap=array(n,INF)
    end

    def push(x)
        i=@n
        @n+=1
        while i>0
            p=(i-1)/2
            break if @heap[p]<=x
            @heap[i]=@heap[p]
            i=p
        end
        @heap[i]=x
    end

    def pop()
        ret=@heap[0]
        @n-=1
        i=0
        x=@heap[@n]
        while i*2+1<@n
            l=i*2+1
            r=i*2+2
            l=r if r<@n and @heap[l]>@heap[r]
            break if @heap[l]>=x
            @heap[i]=@heap[l]
            i=l
        end
        @heap[i]=x
        return ret
    end
end
N,M=get_i
A=get_i
pq=PriorityQueue.new(N)
A.each do|a|
  pq.push(-1*a)
end
m=M
ans=0
until pq.n.zero?
  val=pq.pop
  if m>0
    pq.push((val/2.0).ceil)
    m-=1
  else
    ans-=val
  end
end
puts ans