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

s=get_nsp

L=s.size
s1=s.slice(0,(L-1)/2)
L1=s1.size

(L/2).times do|i|
  if s[i]!=s[L-1-i]
    flag=false
    break
  end
end
flag=true
(L1/2).times do|i|
  if s1[i]!=s1[L1-1-i]
    flag=false
    break
  end
end
s2=s.slice((L+3)/2-1,L-(L+3)/2+1)
L2=s2.size
(L2/2).times do|i|
  if s2[i]!=s2[L2-1-i]
    flag=false
    break
  end
end
puts yn_judge(flag)