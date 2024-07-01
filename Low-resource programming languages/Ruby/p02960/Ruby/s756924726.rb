#input of int(split by space)
def get_i()
  return gets.chomp.split(" ").map(&:to_i)
end
#input of float(split by space)
def get_f()
  return gets.chomp.split(" ").map(&:to_f)
end
#input of string(split by space)
def get()
  return gets.chomp.split(" ")
end
#input of string(split per one character)
def get_nsp()
  return gets.chomp.split("")
end
#yes or no decision
def yn_judge(bool,y="Yes",n="No")
  return bool ? y : n 
end
#create of array
def array(size1,init=nil,size2=-1)
  if size2==-1
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

MOD=10**9+7
S=get_nsp.reverse
#S=["?"]*(10**5)
L=S.size
dp=Array.new(13){0}
dp[0]=1
b=1
S.each_with_index do|s,i|
    dp2=Array.new(13){0}
    k=0
    while k<13
        if s!="?"
            dp2[(k+s.to_i*b)%13]+=dp[k]
        else
            d=0
            while d<10
                dp2[(k+d*b)%13]+=dp[k]
                d+=1
            end
        end
        dp2[k]%=MOD
        k+=1
    end
    dp=dp2
    b*=10
    b%=13
end
puts dp[5]%MOD