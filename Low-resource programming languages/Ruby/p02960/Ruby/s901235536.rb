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

@r = 10**9+7
s = gets.chomp
nk = 1
dp = na2(2,13,0)
dp[0][0] = 1
s.reverse.each_char.with_index do |c, i|
  now_i = (i+1) % 2
  mae_i = (i)% 2
  if(c != "?")
    d = (c.to_i * nk) % 13
    (0...13).each do |j|
      dp[now_i][j] = dp[mae_i][j - d]
    end
  else
    t = nk
    tail = 0
    sum = 0
    head = 0
    10.times do |j|
      sum += dp[mae_i][head]
      head = (head + t) % 13
    end
    13.times do |j|
      sum -= dp[mae_i][tail]
      sum += dp[mae_i][head]
      dp[now_i][head] = sum % @r
      tail += t
      tail %= 13
      head += t
      head %= 13
    end
  end
  nk *= 10
  nk %= 13
end
p dp[s.size%2][5] %@r
