MOD=998244353
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
d=gsmi

# 1は0でないとだめ
putsend 0 if d[0]!=0

d.each do |i|
  h[i] += 1
end

# 距離0は1個でないとだめ
putsend 0 if h[0]!=1

#puts h.to_s

cnt=1
prev=1

h.to_a.sort.each do |k,v|
  next if k==0

  current = (prev**v) % MOD #TODO
  cnt*=current
  cnt%=MOD

  prev=v
end

puts cnt