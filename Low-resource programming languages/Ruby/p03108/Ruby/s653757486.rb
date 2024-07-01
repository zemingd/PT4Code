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
def array(size,n=1,init=nil) #nに配列の次元数、sizeに配列の大きさ、initに初期値を投げることでその配列を返す
  if n==1
    return Array.new(size){init}
  else
    return Array.new(n).map{Array.new(size){init}}
  end
end
class UFT
  attr_accessor:par,:rank,:size
  def initialize(n)
    @par=Array.new(n){|i| i}
    @rank=array(n,1,0)
    @size=array(n,1,1)
  end

  def find(x)
    return x if @par[x]==x
    @par[x]=find(@par[x])
    return @par[x]
  end
  
  def union(x,y)
    x=find(x)
    y=find(y)
    return if x==y
    if @rank[x]<@rank[y]
      @par[x]=y
      @size[y]+=@size[x]
    else
      @par[y]=x
      @size[x]+=@size[y]
      if @rank[x]==@rank[y]
        @rank[x]+=1
      end
    end
  end
  def same?(x,y)
    return find(x)==find(y)
  end
  
  def size_gr(x)
    return @size[find(x)]
  end
end

n,m=get_i
uft=UFT.new(n)
ans=n*(n-1)/2
ab=array(m,1)
m.times do|i|
  ab[i]=get_i
  ab[i][0]-=1
  ab[i][1]-=1
end
ans=[]
all=n*(n-1)/2
ans.push(all)
m.times do|i|
  if uft.same?(ab[m-1-i][0],ab[m-1-i][1])
    ans.push(ans[i])
  else
    ans.push(ans[i]-uft.size_gr(ab[m-1-i][0])*uft.size_gr(ab[m-1-i][1]))
  end
  uft.union(ab[m-1-i][0],ab[m-1-i][1])
end
m.times do|i|
  puts ans[m-i-1]
end