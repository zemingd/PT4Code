MOD=10**9+7
cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

def bs(ar,eq,n) en=(eq==1 ? :>= : :>); ar.bsearch_index{|x|x.send(en,n)} end
def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
require 'prime'
a, b = gsmi

ap = a.prime_division
bp = b.prime_division

putsend(1) if a==1||b==1

# 1のぶんを含める
cnt = 1
ap.each do |x,y|
  idx = bp.index{|n|n[0]==x}
  cnt+=1 unless idx.nil?
end

puts cnt
