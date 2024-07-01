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

n,w=get_i
wv=Array.new(n).map{Array.new(2)}
n.times do|i|
  wv[i]=get_i
end
dp=Array.new(n+1).map{Array.new(w+1)}
dp[0]=Array.new(w){0}
weight=0
for i in 0..n-1
  (w+1).times do|u|
     if dp[i+1][u]==nil and dp[i][u]!=nil
       dp[i+1][u]=dp[i][u]
     end
     if dp[i][u]!=nil and dp[i+1][u]<dp[i][u]
       dp[i+1][u]=dp[i][u]
     end
     if u+wv[i][0]<=w
       dp[i+1][u+wv[i][0]]=dp[i][u]+wv[i][1]
     end
  end 
end
puts dp[n].max