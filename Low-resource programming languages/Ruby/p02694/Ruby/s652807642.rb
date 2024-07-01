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

x = inp[0]
now = 100
ans = 0
while now < x
  ans += 1
  now += now/100
end
p ans