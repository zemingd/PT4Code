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
n,m=gsmi
a=gsmi
lcm=1
prev=nil
n.times do |i|
  cnt=0
  tar=a[i]
  while true do
    if tar%2==0
      tar/=2
      cnt+=1
    else
      break
    end
  end

  if prev
    putsend 0 if prev!= cnt
  else
    prev=cnt
  end
  # if (a[i]/2).even?
  #   putsend 0 if prev==false
  #   prev=true
  # else
  #   putsend 0 if prev==true
  #   prev=false
  # end
end
n.times do |i|
  lcm=(a[i]/2).lcm(lcm)
end
#puts lcm
puts (m/lcm/2.to_f).ceil