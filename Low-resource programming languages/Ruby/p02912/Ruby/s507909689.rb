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

class Hp
  def initialize(len)
    @main = na(len,[99999999,nil])
    @ind = 1
    @size = len - 5
  end

  def push(n)
    p "wa" if(@ind > @size)
    @main[@ind+1] = n
    sind = @ind+1
    while(sind >= 2)
      nind = sind/2
      if(@main[sind][0] < @main[nind][0])
        @main[sind], @main[nind] = @main[nind], @main[sind]
      else
        break
      end
      sind /= 2
    end
    @ind += 1
  end

  def put()
    return @main
  end

  def pop()
    ans = @main[1]
    @main[1] = @main[@ind]
    @main[@ind] = @main[-1]
    sind = 1
    while(true)
      nind = sind*2
      break if(nind > @ind)
      l = @main[nind]
      nind += 1
      if(nind > @ind)
        ind = nind-1
        if(@main[ind][0] < @main[sind][0])
          @main[sind], @main[ind] = @main[ind], @main[sind]
        end
        break
      end
      r = @main[nind]
      ind = (l[0] > r[0])? nind : nind-1
      if(@main[ind][0] < @main[sind][0])
        @main[sind], @main[ind] = @main[ind], @main[sind]
      end
      sind = ind
    end
    @ind -= 1
    return ans
  end

  def res()
    @ind = 1
    push([99999999,nil])
  end
end

hp = Hp.new(100005)
n,m = inp
a = inp
a.each do |d|
  hp.push([d*-1,0])
end
m.times do
  u = hp.pop
  if(u[0] == 0)
    puts 0
    exit
  end
  hp.push([((u[0]*-1)/2)*-1,0])
end
ans = 0
while true
  u = hp.pop

  break if(u[1] == nil)
  ans += u[0]
end
p ans * -1
