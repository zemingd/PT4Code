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
def array(size1,init=nil,size2=-1) #size2に二次元配列時の最初の要素数、size1に次の配列の大きさ、initに初期値を投げることでその配列を返す
  if size2==-1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

class UnionFindTree
    attr_accessor:par,:rank
    def initialize(n)
        @par=Array.new(n){|i| i}
        @rank=array(n,0)
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
      else
          @par[y]=x
          @rank[x]+=1 if @rank[x]==@rank[y]
      end  
    end

    def same?(x,y)
        return find(x)==find(y)
    end
end

uft=UnionFindTree.new(12)
uft.union(0,2)
uft.union(2,4)
uft.union(4,6)
uft.union(6,7)
uft.union(7,9)
uft.union(9,11)
uft.union(3,5)
uft.union(5,8)
uft.union(8,10)
x,y=get_i
x-=1
y-=1
if uft.same?(x,y)
    puts "Yes"
else
    puts "No"
end