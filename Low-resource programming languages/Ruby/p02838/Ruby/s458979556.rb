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
@r = 10**9+7
n = inp[0]
a = inp
ans = 0
rw = na(n,0)
brw = na(60,0)
wt = []
(0...60).each do |n|
  wt.push(2**n)
end
(0...n).reverse_each do |i|
  wt.each.with_index do |d,j|
    brw[j] += 1 if d & a[i] >= 1
  end
end

(0...(n-1)).each do |i|
  nn = n-i-1
  wt.each.with_index do |d,j|
    if d & a[i] >= 1
      brw[j] -= 1
      ans += (nn-brw[j]-brw[j])*d
      ans %= @r
    end
  end
end
n.times do |i|
  ans = (ans + a[i] * i)%@r
end
p ans