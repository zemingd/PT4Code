#require 'prime'
#require 'openssl'
MOD=10**9+7;  cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.chomp.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def ar2(s1,s2,de=nil) Array.new(s1){Array.new(s2,de)} end
def ar3(s1,s2,s3,de=nil) Array.new(s1){Array.new(s2){Array.new(s3,de)}} end

def desc(ar) ar.sort!{|x,y| y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+).to_i end
def ceil(a,b) (a.to_f/b).ceil end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end
def rui(ar) s=[0]; ar.size.times{|i| s<<s[-1]+ar[i]}; s end
def rev_rui(ar) s=[0]; ar.size.times.reverse_each{|i| s<<s[-1]+ar[i]}; s end

def puts_yesno(b) puts(b ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def pu(h) begin; require './../../abc/nemi_lib/debug.rb'; puts_val(h); rescue LoadError; end; end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n=gi
x=gs
Memo={}
def execute(n,cnt=1)
  pc= (Memo[n] ? Memo[n] : n.to_s(2).count("1"))
  Memo[n]=pc
  mod=n%pc
  return cnt if mod==0
  execute(mod,cnt+1)
end

ans=[]
n.times do |i|
  xi=Marshal.load(Marshal.dump x)
  xi[i]= (xi[i]=="1" ? "0" : "1")
  num = xi.to_i 2
  pu num:num
  ans<<execute(num)
end
puts ans