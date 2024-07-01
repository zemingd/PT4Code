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
L=S.size
dp=Array.new(L+1){Array.new(13){0}}
dp[0][0]=1
b=1
L.times do|i|
        13.times do|k|
          if S[i]!="?"
              dp[i+1][(k+S[i].to_i*b)%13]+=dp[i][k]
              dp[i+1][(k+S[i].to_i*b)%13]%=MOD
          else
            10.times do|d|
                dp[i+1][(k+d*b)%13]+=dp[i][k]
                dp[i+1][(k+d*b)%13]%=MOD
            end
          end
        end
    b*=10
    b%=13
end
puts dp[L][5]