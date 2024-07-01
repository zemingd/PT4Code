MOD=10**9+7
cnt=0; sum=0; prev=nil; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n, k ,q = gsmi
a = q.times.map{gi}.sort

base = k-q
ar = Array.new(n,base)

q.times do |i|
  ar[a[i]-1]+=1
end

n.times do |i|
  can = ar[i]>0
  puts_yesno(can)
end