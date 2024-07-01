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
s=gs.chars
prev = s[0]
can=true
1.upto(s.size-1) do |i|
  can = false if prev==s[i]
  prev=s[i]
end
puts can ? 'Good' : 'Bad'