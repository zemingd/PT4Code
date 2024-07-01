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

n,q=get_i
s=get_nsp
table=array(n+1,1,0)
flag=false
n.times do|i|
  val=0
  if s[i]=="A"
    flag=true
  elsif s[i]=="C"
    val=1
    flag=false
  else
    flag=false
  end
  table[i+1]=table[i]+val
end
q.times do
  l,r=get_i
  #l-=1
  #r-=1
  puts table[r]-table[l]
end