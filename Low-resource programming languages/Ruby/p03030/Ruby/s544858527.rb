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

N=gets.to_i
sp=array(N)
N.times do|i|
    sp[i]=get
    sp[i][1]=sp[i][1].to_i
    sp[i].push(i)
end
sp.sort!{|x,y| x[0]<=>y[0]}
point=[]
(N-1).times do|i|
  if sp[i][0]==sp[i+1][0]
      point.push(sp[i])
  else
      point.push(sp[i])
      if point!=[]
          point.sort!{|x,y| y[1]<=>x[1]}
          point.each do|s,p,i|
              puts i+1
          end
          point=[]
      end
  end
end
point.push(sp[N-1])
      if point!=[]
          point.sort!{|x,y| y[1]<=>x[1]}
          point.each do|s,p,i|
              puts i+1
          end
      end