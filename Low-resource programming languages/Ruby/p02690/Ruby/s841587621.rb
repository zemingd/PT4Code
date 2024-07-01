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
$jt = na(200001,0)
(-100000..100000).each do |d|
  $jt[d] = d**5
end
def b_serf(l_ok,r_ng,x,s)
  m = (l_ok+r_ng)/2
  if(m == l_ok)
    return (($jt[s]-$jt[m])==x)? m : false
  end
  if(($jt[s]-$jt[m])==x)
    return m
  else
    if((($jt[s]-$jt[m])<x))
      return b_serf(m,r_ng,x,s)
    else
      return b_serf(l_ok,m,x,s)
    end
  end
end
def b_sers(l_ok,r_ng,x,s)
  m = (l_ok+r_ng)/2
  if(m == l_ok)
    return (($jt[s]-$jt[m])==x)? m : false
  end
  if(($jt[s]-$jt[m])==x)
    return m
  else
    if((($jt[s]-$jt[m])>x))
      return b_sers(m,r_ng,x,s)
    else
      return b_sers(l_ok,m,x,s)
    end
  end
end
x = inp[0]
(-100000..100000).each do |i|
  if(j = b_serf(0,100000,x,i))
    puts "#{i} #{j}"
    exit
  end
  if(j = b_sers(-100000,0,x,i))
    puts "#{i} #{j}"
    exit
  end
end
