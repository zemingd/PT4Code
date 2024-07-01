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
n=gi

a=1
a1 = []
10.times do |i|
  a*=6
  if a<=n
    a1<<a
  else
    break
  end
end

a=1
a2 = []
10.times do |i|
  a*=9
  if a<=n
    a2<<a
  else
    break
  end
end

a1.reverse!
a2.reverse!
#puts a1.to_s
#puts a2.to_s

# dp[金額]=回数
dp = h
dp[0]=0
a1.each do |i|
  d=n/i
  
  cur=Marshal.load(Marshal.dump dp)
  cur.each do |k,v|
    min = min d,5
    1.upto(min) do |j|
      dp[k+i*j] = dp[k] + j if k+i*j<=n
    end
  end
end

#puts dp.to_s

a2.each do |i|
  d=n/i
  
  cur=Marshal.load(Marshal.dump dp)
  cur.each do |k,v|
    min = min d,8
    1.upto(min) do |j|
      next if k+i*j>n

      c = dp[k] + j 
      if dp[k+i*j]>c || dp[k+i*j]==0
        dp[k+i*j] = c 
      end
    end
  end
end

#puts dp.to_s


ar = dp.to_a.sort
#puts ar.to_s
cnt = ar[-1][1] + n-ar[-1][0] 
puts cnt