MOD=10**9+7
cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.chomp.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y| y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end
def rui(ar) s=[0]; ar.size.times{|i| s<<s[-1]+ar[i]}; s end
def rev_rui(ar) s=[0]; ar.size.times.reverse_each{|i| s<<s[-1]+ar[i]}; s end

def puts_yesno(b) puts(b ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
n=gi
xyh=n.times.map{gsmi}

h_ex=0

0.upto(100) do |i|
  0.upto(100) do |j|
    hh=nil
    can=false
    xyh.each do |x,y,h|
      h_ex=h+(x-i).abs+(y-j).abs
      if hh
        if hh!=h_ex
          can=false
          break
        else
          can=true
        end
      else
        hh=h_ex
        can=true
      end
    end
    if can
      putsend "#{i} #{j} #{h_ex}"
    end
  end
end