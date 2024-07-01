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
def yn_judge(bool,y="Yes",n="No")
  return bool ? y : n 
end

def max(a,b)
  return a>b ? a : b
end
n,W=get_i
wv=Array.new(n).map{Array.new(2)}
n.times do|i|
  wv[i]=get_i
end
wv.sort!{|x,y| x[0]<=>y[0]}
dp=Array.new(W+1,0)
wv.each do|w,v|
  W.downto(w) do|u|
    dp[u]=dp[u-w]+v if dp[u]<dp[u-w]+v
  end
end
puts dp.max