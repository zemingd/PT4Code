n,c = gets.chomp.split(" ").map{ |it| it.to_i}
class Vi
  attr_reader :s,:t,:c
  def initialize(ss,tt,cc)
    @s = ss
    @t = tt
    @c = cc
  end
end
class Machine
  attr_reader :t,:c
  def initialize(tt,cc)
    @t = tt
    @c = cc
  end
  def set(data)
    @t = data.t
    @c = data.c
  end
  def check(data)
    if(data.c == @c)
      return true if (data.s >= @t)
      return false
    else
       return true if ((data.s - 0.5) >= @t)
       return false
    end
  end
end
sl = []
tl = []
cl = []
vl = []
n.times do |nn|
  list = gets.chomp.split(" ").map{ |it| it.to_i}
  sl.push(list[0])
  tl.push(list[1])
  cl.push(list[2])
  vl.push(Vi.new(list[0],list[1],list[2]))
end
vl.sort!{ |a,b| a.t <=> b.t}
vl.sort!{ |a,b| a.s <=> b.s}

list = [Machine.new(-1,-1)]
while(vl.size > 0)
  ok = false
  cas = vl.shift
  list.size.times do |nn|
    unless ok
      if list[nn].check(cas)
        list[nn].set(cas)
        ok =true
      end
    end
  end
  list.push(Machine.new(cas.t,cas.c)) unless ok
end
print "#{list.size}\n"
