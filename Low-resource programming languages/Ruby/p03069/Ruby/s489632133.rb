MOD=10**9+7
cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort{|x,y|y<=>x} end##
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n=gi
s=gs

# しろるいせきわ
wc=[0]
n.times do |i|
  c = wc[-1]+(1 if s[i]=='.').to_i
  wc << c
end

# くろるいせきわ
bc=[0]
bs=s.reverse
n.times do |i|
  c = bc[-1]+(1 if bs[i]=='#').to_i
  bc << c
end

right=0
(n+1).times do |i|
  sum = wc[i]+bc[(n+1)-i-1]
  right = sum if right<sum
end

puts n-right