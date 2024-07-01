def calcs(x,y,ax,ay,bx,by) ((ax-x)*(by-y)-(bx-x)*(ay-y))/2.0 end
def inpf() a=gets.chomp.split(" ").map(&:to_f)end
def inps() a=gets.chomp.split(" ")end  
def copy(a) Marshal.load(Marshal.dump(a)) end
def factorial(n)(n < 2)? 1 : (2..n).inject(:*) end
def scount(a) b=na(a.max+1);a.each{|n|b[n]+=1};return b end
def na(n,d=0) Array.new(n,d)end
def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end
def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end
def yn(f) return (f)? "Yes": "No" end
def ynb(f) return (f)? "YES": "NO" end
def ap(a) a.each{|u| p u} end
def bit(n) n.to_s(2).split("").map(&:to_i) end
def inp() a=gets.chomp.split(" ").map(&:to_i)end
n = inp[0]
t = []
ans = []
n.times do |i|
  t.push(inps+[i+1])
  t[i][1] = t[i][1].to_i
end
t.sort_by!{|u|u[1]}
t.reverse!
i = 0
t.sort_by!{|u|[u[0],i+=1]}
n.times do |i|
 p t[i][2]
end
=begin

=end