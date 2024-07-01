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
n,a,b=gsmi
abs=(a-b).abs
if abs%2==0
  putsend abs/2
end

# 1位kaさいかいで1ターン調整
#1,2,3,4,///
max=max(a,b)
min=min(a,b)

edge = min(n-max,min-1)
if n-max >= min-1
  #hidari
  a-=edge
  b-=edge
else
  a+=edge
  b+=edge
end

puts edge+1+((a-b).abs-1)/2