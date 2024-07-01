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

class SegTree
    attr_accessor:node,:n
    def initialize(n,a)
        @n=1
        @n*=2 while @n<n
        @node=array(2*@n,0)
        n.times do|i|
          @node[i+@n]=a[i]
        end
        (@n-1).downto(1) do|i|
            @node[i]=@node[i*2].gcd(@node[i*2+1])
        end
    end
    def get_gcd(l,r)
      l+=@n
      r+=@n
      ret=0
      while l<r
        if l.odd?
            ret=ret.gcd(@node[l])
            l+=1
        end
        if r.odd?
            r-=1
            ret=ret.gcd(@node[r])
        end
        l/=2
        r/=2
      end
      return ret
    end
end
N=gets.to_i
A=get_i
st=SegTree.new(N,A)
ans=0
N.times do|i|
  l_val=0
  r_val=0
  if i==0
    l_val=0
    r_val=st.get_gcd(1,N) 
  elsif i==N-1
    l_val=st.get_gcd(0,N-1)
    r_val=0
  else
    l_val=st.get_gcd(0,i)
    r_val=st.get_gcd(i+1,N)
  end 
  val=l_val.gcd(r_val)
  ans=val if ans<val
end
puts ans
