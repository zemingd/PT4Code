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
def pu(h) begin; require './../nemi_lib/debug.rb'; puts_val(h); rescue LoadError; end; end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n,m,k=gsmi
a=gsmi
b=gsmi
rui_a=rui a
rui_b=rui b
max=0
pu rui_a:rui_a.to_s
pu rui_b:rui_b.to_s
(n+1).times do |i|
  a_sum=rui_a[i]
  #c_a=i
  c=0
  if k-a_sum>=0
    idx=rui_b.bsearch_index{|x|x>k-a_sum}
    if idx.nil?
      if rui_b[-1]!=k-a_sum
        idx=rui_b.size
      else
        idx=rui_b.size-1
      end
    else
      if rui_b[idx]!=k-a_sum
        idx=[idx-1,0].max
      end
    end
    c=i+idx
    pu idx:idx
    pu c:c
  else
    next
  end

  max=c if max<c
end

puts max
