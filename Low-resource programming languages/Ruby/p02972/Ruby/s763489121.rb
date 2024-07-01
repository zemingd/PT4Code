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

n =inp[0]
a = [0]+inp
t = na2(n+1,0)
(1..n).each do |i|
  d = i
  while d <= n
    t[d].push(i)
    d += i
  end
end
ans = []
(1..n).each do |i|
  x = nil
  t[i].each do |j|
    if(x == nil)
      x = a[j]
    elsif(x != a[j])
      puts -1
      exit
    end
  end
  if(x == 0)
  else
    ans.push(i)
    t[i].each do |j|
      a[j] = 0
    end
  end
end
puts ans.count(1)
puts ans.join(" ") if(ans.count(1) > 0)