def calcs(x,y,ax,ay,bx,by) ((ax-x)*(by-y)-(bx-x)*(ay-y))/2.0 end
def inpf() a=gets.chomp.split(" ").map(&:to_f)end
def inps() a=gets.chomp.split(" ")end  
def copy(a) Marshal.load(Marshal.dump(a)) end
def factorial(n)(n < 2)? 1 : (2..n).inject(:*) end
def scount(a) b=na(a.max+1);a.each{|n|b[n]+=1};return b end
def na(n,d=0) Array.new(n,d)end
def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end
def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end
def bit(n) n.to_s(2).split("").map(&:to_i) end
def inp() a=gets.chomp.split(" ").map(&:to_i)end

n=inp[0]
a = inp
h = {}
a.each.with_index do |d,i|
  a[i] = d-i
  d = a[i]
  if h[d]
    h[d] += 1 
  else
    h[d] = 1
  end
end
m = a.sort[(n+1)/2] if n> 1
sum = 0
a.each do |d|
  sum += (d - m).abs
end
ans =sum
sum = 0
m = a.sort[n/2]
a.each do |d|
  sum += (d - m).abs
end
ans = [sum,ans].min
p ans