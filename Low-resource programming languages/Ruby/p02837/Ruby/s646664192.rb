#exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},'/usr/bin/ruby', $0) if !ENV['RUBY_THREAD_VM_STACK_SIZE']

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

def big(a,b) return (a>b)? a:b end

n = inp[0]
pt = na2(n,0)
n.times do |i|
  m = inp[0]
  m.times do
    dp = inp
    dp[0] = dp[0]-1
    pt[i].push([dp[0],dp[1]])
  end
end
max = 0
(1..(2**n-1)).each do |ds|
  c = 0
  t = Array.new(n)
  f = false
  n.times do |pi|
    next if ds[pi] == 0
    c+=1
    pt[pi].each do |voice|
      if(voice[1] != ds[voice[0]])
        f = true
        break
      end
    end
  end
  next if f
  [max = [c,max].max]
end
p max