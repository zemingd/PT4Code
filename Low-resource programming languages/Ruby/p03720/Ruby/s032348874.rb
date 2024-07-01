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
n,m = inp
ans = na(n)
m.times do
  a,b = inp
  ans[a-1] += 1
  ans[b-1] += 1
end
puts ans
=begin
=end