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

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n = gi

s = n.to_s
l = s.length
ar=["3","5","7"]
prev=['']
ans=[]
while l>0 do
  current = []
  prev.each do |i|
    ar.each do |j|
      current << (i+j)
    end
  end
  prev = current
  ans << current
  ans.flatten!
  l-=1
end
#debug 'ans',ans.to_s

ans.each do |s|
  break if s.to_i>n
  cnt+=1 if s["3"] && s["5"] && s["7"]
end
puts cnt