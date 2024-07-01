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
N=gets.to_i
A=get_i
find={}
A.each do|a|
  find[a]=0 if find[a]==nil
  find[a]+=1
end
a=A.sort{|x,y| y<=>x}.uniq
n=a.size
ans=0
(n-1).times do|i|
  (i+1).upto(n-1) do|j|
      if find[a[i]]>=4
          ans=max(ans,a[i]*a[i])
      elsif find[a[i]]>=2 and find[a[j]]>=2
          ans=max(a[i]*a[j],ans)
      end
  end
end
ans=a[n-1]*a[n-1] if ans.zero? and find[a[n-1]]>=4
puts ans