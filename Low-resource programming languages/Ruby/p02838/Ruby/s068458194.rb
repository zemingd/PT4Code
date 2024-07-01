MOD=10**9+7
cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n=gi
a=gsmi
n.times do |i|
  b=a[i].to_s(2).reverse
  l=b.length
  l.times do |j|
    if b[j]=='1'
      h[j]+=1
    end
  end
end
l=h.keys.max
puts 0 if l==0

0.upto(l) do |i|
  next if h[i]==0
  cnt+=(((2**i)%MOD)*h[i]*(n-h[i]))
  cnt%=MOD
end
puts cnt%MOD