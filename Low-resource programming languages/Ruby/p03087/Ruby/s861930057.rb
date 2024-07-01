"'A', 'C', 'G', 'T' からなる長さNの文字列Sが与えられます
以下のQ個のクエリに答えよ. Sのl文字目からr文字目までにACが何回登場するかを答えよ"

#入力
N, Q = gets.split.map(&:to_i)
str = gets.chomp
l=[]
r=[]
Q.times do |i|
  l[i], r[i] = gets.split.map(&:to_i)
end

# 累積和を配列sに入れてく(ACが続いたら+1)
# i文字目(i=1,,,N)までのACの数はs[i-1]に入ってる
s=[]
s[0] = 0
(N-1).times do |i|
  if str[i]=='A' && str[i+1]=='C'
    s[i+1] = s[i] + 1
  else 
    s[i+1] = s[i]
  end
end

#i文字目からj文字目までのACの数はs[j-1]-s[i-1]
Q.times do |i|
  puts(s[r[i]-1] - s[l[i]-1])
end