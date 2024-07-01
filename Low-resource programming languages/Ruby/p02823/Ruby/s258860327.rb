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

def small(a,b) return (a<b)? a:b end

n,a,b = inp
if((a-b)%2==0)
  puts (a-b).abs/2
else
  lg = (small(a,b) -1)
  buf1 = lg + r_up((a-lg-1),2)+r_up((b-lg-1),2)
  rg = (small(n-a,n-b))
  buf2 = rg + r_up(((n-a)-rg),2)+r_up(((n-b)-rg),2)
  puts [buf1,buf2].min
end