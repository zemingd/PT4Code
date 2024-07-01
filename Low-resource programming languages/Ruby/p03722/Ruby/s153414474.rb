def calcs(x,y,ax,ay,bx,by) ((ax-x)*(by-y)-(bx-x)*(ay-y))/2.0 end
def inpf() a=gets.chomp.split(" ").map(&:to_f)end
def inps() a=gets.chomp.split(" ")end  
def copy(a) Marshal.load(Marshal.dump(a)) end
def kaizyo(n)(n < 2)? 1 : (2..n).inject(:*) end
def scount(a) b=na(a.max+1);a.each{|n|b[n]+=1};return b end
def na(n=0,d=0) Array.new(n,d)end
def na2(n=0,m=0,d=0) Array.new(n){Array.new(m,d)}end
def na3(n=0,m=0,l=0,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end
def bit(n) n.to_s(2).split("").map(&:to_i) end
def inp() a=gets.chomp.split(" ").map(&:to_i)end
@n,k = inp
@lis = na2(@n+1,0)
@rev = na2(@n+1,0)
k.times do
  a,b,c = inp
  @rev[b].push(a)
  @lis[a].push([b,c])
end
@h = {}
@ans = -1e20
@memo = na(@n+1,-1e20)
@able = na(@n+1,false)
def sable(x)
  return if(@able[x])
  @able[x] = true
  @rev[x].each do |i|
    sable(i)
  end
end
sable(@n)
def zent(x,s,d)
  if(d > 1500)
    puts  "inf"
    exit
  end
  if(x == @n)
    @ans = [@ans,s].max
  end
  return if(@memo[x] >= s)
  @memo[x] = s
  @lis[x].each do |aa|
    zent(aa[0],s+aa[1],d+1)
  end
end
zent(1,0,0)
p @ans
=begin
=end
