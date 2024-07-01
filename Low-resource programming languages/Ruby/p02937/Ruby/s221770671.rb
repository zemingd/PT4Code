require 'time'

def calcs(x,y,ax,ay,bx,by) ((ax-x)*(by-y)-(bx-x)*(ay-y))/2.0 end

def inpf() a=gets.chomp.split(" ").map(&:to_f)end

def inps() a=gets.chomp.split(" ")end

def copy(a) Marshal.load(Marshal.dump(a)) end

def factorial(n)(n < 2)? 1 : (2..n).inject(:*) end

def scount(a) b=na(a.max+1);a.each{|n|b[n]+=1};return b end

def na(n,d=0) Array.new(n,d)end

def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end

def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end

def yn(f) return (f)? "Yes": "No" end

def ynb(f) return (f)? "YES": "NO" end

def ap(a) a.each{|u| p u} end

def bit(n) n.to_s(2).split("").map(&:to_i) end

def inp() a=gets.chomp.split(" ").map(&:to_i)end

s = inps[0]
t = inps[0]
dp = na2(26,s.size,nil)
l = s.size
(1..(s.size)).each do |i|
  26.times do |j|
    dp[j][l-i] = dp[j][l-i+1]
  end
  pp = s[l-i].ord - "a".ord
  dp[pp][l-i] = l-i
end
now_index = 0
rc =0
t.each_char do |c|
  cd = c.ord - "a".ord
  if(dp[cd][now_index] == nil)
    if(dp[cd][0] == nil)
      p -1
      exit
    else
      rc += 1
      now_index = dp[cd][0]
    end
  else
    now_index = dp[cd][now_index]
  end
  now_index += 1
end
p rc * s.size + now_index
#puts ()? "Yes" : "No"
#puts ()? "YES" : "NO"
#puts ()? "yes" : "no"