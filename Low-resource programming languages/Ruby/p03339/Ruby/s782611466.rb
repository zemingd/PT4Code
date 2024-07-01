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

N=gets.to_i
S=get_nsp
l=array(N,0)
r=array(N,0)
S.size.times do|i|
    if i!=0
          l[i]+=l[i-1]
          r[N-1-i]+=r[N-i]
    end
    if S[i]=="E"
        l[i]+=1
    end
    if S[N-1-i]=="W"
        r[N-1-i]+=1
    end
end
ans=N
N.times do|i|
  val=N-l[i]-r[i]
  if ans>val
      ans=val
  end
end
puts ans