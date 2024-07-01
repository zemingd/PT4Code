#exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},'/usr/bin/ruby', $0) if !ENV['RUBY_THREAD_VM_STACK_SIZE']
require 'prime'

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

def small(a,b) return (a<b)? a:b end

n = inp[0]
a = inp
mem = na(10**6+100,false)
mem2 = na(10**6+100,false)
h = {}
max = 10**6
n.times do |i|
  h[a[i]] = i
end
a.sort!
ans = 0

n.times do |i|
  next if(mem[a[i]])
  ans += 1 if(a[i]!= a[i-1] and a[i] != a[i+1])
  ind = a[i]
  mem2[ind] = 1
  pl = a[i]
  while ind < max
    mem[ind] = true
    ind += pl
  end

end
puts ans
