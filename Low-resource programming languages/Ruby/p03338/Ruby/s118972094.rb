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
n = inp[0]
ans = 0
s = gets.chomp
n.times do |i|
  h = {}
  c = 0
  (0..i).each do |j|
    h[s[j]] = true
  end
  ((i+1)...n).each do |j|
    c+= 1 if h[s[j]] == true
    h[s[j]]=false if h[s[j]] == true
  end
  ans = [c,ans].max
end
p ans