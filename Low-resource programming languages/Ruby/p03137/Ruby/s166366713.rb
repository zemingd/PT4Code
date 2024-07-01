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
n, m = gsmi
x = gsmi.sort

if n>=m
  putsend 0
end

# 点間の移動しない距離を最大化する
blank = []
(m-1).times do |i|
  blank << x[i+1]-x[i]
end

puts (x[-1]-x[0])-blank.max(n-1).inject(:+)