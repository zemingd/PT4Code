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
n = gi
ab = n.times.map{gsmi}.sort{|x,y|x[1]<=>y[1]}

can = true
t = 0
# 締め切り近い順にやる
n.times do |i|
  time = ab[i][0]
  dl = ab[i][1]
  t += time
  if t>dl
    can = false
    break
  end
end

puts_yesno(can)