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
nk = 10
dp = na2(s.size+1,13,0)
dp[s.size][0] = 1
s.reverse.each_char.with_index do |c, i|
  if(c != "?")
    d = c.to_i
    (0...13).each do |j|
      dp[i][j] = dp[i-1][j-d]
    end
  else
    t = nk
    tail = 0
    sum = 0
    head = 0
    10.times do |j|
      sum += dp[i-1][head]
      head = (head + t) % 13
    end
    13.times do |j|
      sum -= dp[i-1][tail]
      sum += dp[i-1][head]
      dp[i][head] += sum
      dp[i][head] %= @r
      tail += t
      tail %= 13
      head += t
      head %= 13
    end
  end
  nk *= 10
  nk %= 13
end
p dp[-2][5] %@r
