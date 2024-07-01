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

n.times do |i|
  key=gi
  kk = key.times.map{gsmi}
  h[i]=kk
end
#puts h.to_s

max=0
(2**n-1).downto(0) do |i|
  b="%0#{n}d" % i.to_s(2)
  right=b.chars.map(&:to_i)
  #puts b
  can=true
  n.times do |j|
    info=h[j]
    #puts h[j].to_s
   
    info.each do |k,fl|
      if right[j]==1
        if right[k-1]!=fl
          can=false
          break
        end
      else
        if right[k-1]==fl
          can=false
          break
        end
      end
    end
    break unless can
  end
  #puts right.to_s
  #puts can.to_s

  if can
    c=right.count(1)
    max=c if max<c
  end
  
end

puts max