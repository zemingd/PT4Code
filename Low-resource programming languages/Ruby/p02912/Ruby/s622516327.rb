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
a = gsmi.sort

#half = []
while m>0 do
  tar = a.pop/2
  m-=1
  idx = a.bsearch_index{|x|x>=tar}
  if idx.nil?
    tar = tar/2
    m-=1
  else
    num = a.size - idx
    min = min(m,num)
    min.times do |i|
      a[a.size-i-1]/=2
    end
    m -= min
  end
  a << tar
  a.sort!
end

puts a.inject(:+).to_i
