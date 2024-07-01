def inpf() a=gets.chomp.split(" ").map(&:to_f)end

def inps() a=gets.chomp.split(" ")end

def copy(a) Marshal.load(Marshal.dump(a)) end

def kaijo(n,r = 10**9+7)(n < 2)? 1 : (2..n).inject{|memo,u|memo=(memo*u)%r} end

def na(n,d=0) Array.new(n,d)end

def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end

def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end

def inp() a=gets.chomp.split(" ").map(&:to_i)end

def r_up(a, b) (a+b-1)/b end

s = gets.chomp
dp = na2(13,0)
k = na(13,0)
dp[0] = 1
hi = 1
r = 10**9+7
s.reverse.each_char do |c|
  if(c == "?")
    now = 0
    10.times do |d|
      13.times do |i|
        k[i] += dp[(i-now)%13] % r
      end
      now += hi
    end
  else
    now = c.to_i*hi
    13.times do |i|
      k[i] = dp[(i-now)%13]
    end
  end
  dp = k
  hi = (hi*10)%13
  k.fill(0)
end

p dp[5]%r