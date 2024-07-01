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
N,K=get_i
A=get_i
bit=array(40,0)
A.each do|a|
    a=a.to_s(2).split("").map(&:to_i)
    a.reverse.each_with_index do|v,i|
        bit[i]+=v
    end
end
res=0
bit.reverse.each_with_index do|b,i|
    if res+2**(40-1-i)<=K and b<=N/2
        res+=2**(40-1-i)
    end
end
ans=0
A.each do|a|
  ans+=a^res
end
puts ans