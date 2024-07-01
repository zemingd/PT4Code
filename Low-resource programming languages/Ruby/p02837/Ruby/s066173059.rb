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

n=gets.to_i
info=array(n,1)
n.times do|i|
  a=gets.to_i
  info[i]=array(a,1) unless a.zero?
  a.times do|j|
    info[i][j]=get_i
    info[i][j][0]-=1
  end
end
ans=0
(2**n).times do|i|
  hu=array(n,1,-1)
  cnt=0
  flag=true
  n.times do|j|
    unless (i&(2**j)).zero?
      if hu[j]==-1
        hu[j]=1
      elsif hu[j]==0
        flag=false
        break
      end
      cnt+=1
      next if info[j]==nil
      info[j].each do|arr|
        if hu[arr[0]]==-1
          hu[arr[0]]=arr[1]
        elsif hu[arr[0]]!=arr[1]
          flag=false
          break
        end
      end
    else
      if hu[j]==-1
        hu[j]=0
      elsif hu[j]==1
        flag=false
        break
      end
    end
    unless flag
      break
    end
  end
  if flag
    ans=(ans>cnt) ? ans : cnt
  end
end
puts ans