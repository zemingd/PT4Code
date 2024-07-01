def inpf() a=gets.chomp.split(" ").map(&:to_f)end

def inps() a=gets.chomp.split(" ")end

def copy(a) Marshal.load(Marshal.dump(a)) end

def kaijo(n,r = 10**9+7)(n < 2)? 1 : (2..n).inject{|memo,u|memo=(memo*u)%r} end

def na(n,d=0) Array.new(n,d)end

def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end

def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end

def inp() a=gets.chomp.split(" ").map(&:to_i)end

def r_up(a, b) (a+b-1)/b end

def sum(a) a.inject(:+) end

n = inp[0]
a = inp

dp = na2(n+1,2,-9999)
dp[0][0] = 0
(n).times do |i|
  dp[i+1][0] = [dp[i][0]+a[i],dp[i][1]-a[i]].max
  dp[i+1][1] = [dp[i][0]-a[i],dp[i][1]+a[i]].max
end
p dp[n][0]

