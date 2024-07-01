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

def r_sort(a) a.sort{|a,b|b<=>a} end

n = inp[0]
a = [0]+inp
t = na(n+1,0)
ans = []
((n/2+1)..n).each do |i|
  if(1 == a[i])
    t[i] = 1
    ans.push(i)
  end
end
(1..(n/2)).reverse_each do |i|
  d = i+i
  c = 0
  while d <= n
    c += t[d]
    d += i
  end
  if(c%2 != a[i])
    t[i] = 1
    ans.push(i)
  end
end
puts ans.size
puts ans.join(" ") if(ans.size > 0)