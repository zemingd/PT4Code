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

def max(a,b)
    return a>b ? a : b
end

def min(a,b)
    return a>b ? b : a
end

INF=Float::INFINITY
N,K=get_i
S=get_nsp.map(&:to_i)
num=[]
num.push(0) if S[0]==0
i=0
while i<N
    j=i
    j+=1 while j<N and S[i]==S[j]
    num.push(j-i)
    i=j
end
num.push(0) if S[-1]==0
n=num.size
accum_sum=array(n+1,0)
n.times do|i|
    accum_sum[i+1]=accum_sum[i]+num[i]
end
ans=0
#p accum_sum
0.step(n-1,2) do|l|
  r=min(l+2*K+1,n)
  ans=max(ans,accum_sum[r]-accum_sum[l])
end
puts ans