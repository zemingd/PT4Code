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
a=array(N)
N.times do|i|
    a_=gets.to_i
    a[i]=[]
    a_.times do
        xy=get_i
        xy[0]-=1
        a[i].push(xy)
    end
end
res=0
(2**N).times do|bit|
    ans=0
    p_=array(N,-1)
    flag=true
    arr=[]
    N.times do|i|
        unless (bit&(2**i)).zero?
          arr.push(i)
          ans+=1
          if p_[i]!=-1 and p_[i]!=1
              flag=false
              break
          end
          p_[i]=1
          if a[i]!=[] 
            a[i].each do|x,y|
              if p_[x]==-1
                  p_[x]=y
              elsif p_[x]!=y
                  flag=false
                  break
              end 
            end
          end
        else
          if p_[i]!=-1 and p_[i]!=0
              flag=false
              break
          end
          p_[i]=0
          if a[i]!=[]
              a[i].each do|x,y|
                  if p_[x]==-1
                      p_[x]=(y+1)%2
                  elsif p_[x]==y
                      flag=false
                      break
                  end
              end
          end
        end
    end
    if flag
        res=ans
        break
    end
end
puts res