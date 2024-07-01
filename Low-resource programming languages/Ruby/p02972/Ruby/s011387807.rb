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

ans=Array.new(n,0)
(n-1).downto(0) do |i|
  num=i+1
  cnt=0
  num.step(n,num) do |j|
    cnt+=ans[j-1]
  end
  ans[i]=1 if (a[i]+cnt)%2==1
end

a2=[]
ans.each.with_index do |a,i|
  a2<<i+1 if a==1
end

if a2.size.zero?
  puts 0
else
  puts "#{a2.size}\n#{a2.join(' ')}"
end