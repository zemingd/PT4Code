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

class Edge
  attr_accessor:to,:from,:c
  def initialize(from,to,c)
    @to=to
    @from=from
    @c=c
  end
end

n,m=get_i
edges=array(m,1)
m.times do|i|
  a,b,c=get_i
  a-=1
  b-=1
  c*=-1
  edges[i]=Edge.new(a,b,c)
end

INF=10**30
d=array(n,1,INF)
d[0]=0
flag=array(n,1,false)
n.times do|i|
  m.times do|j|
    e=edges[j]
    if d[e.to]>d[e.from]+e.c
      d[e.to]=d[e.from]+e.c
    end
  end
end
n.times do|i|
  m.times do|j|
    e=edges[j]
    if d[e.to]>d[e.from]+e.c
      d[e.to]=d[e.from]+e.c
      flag[e.from]=true
    end
    flag[e.to]=true if flag[e.from]
  end
end
if flag[n-1]
  puts "inf"
else
  puts d[n-1]*-1
end