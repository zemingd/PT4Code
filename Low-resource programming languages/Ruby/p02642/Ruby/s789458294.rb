require 'prime'
#require 'openssl'
MOD=10**9+7;  cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.chomp.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def ar2(s1,s2,de=nil) Array.new(s1){Array.new(s2,de)} end
def ar3(s1,s2,s3,de=nil) Array.new(s1){Array.new(s2){Array.new(s3,de)}} end

def desc(ar) ar.sort!{|x,y| y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+).to_i end
def ceil(a,b) (a.to_f/b).ceil end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end
def rui(ar) s=[0]; ar.size.times{|i| s<<s[-1]+ar[i]}; s end
def rev_rui(ar) s=[0]; ar.size.times.reverse_each{|i| s<<s[-1]+ar[i]}; s end

def puts_yesno(b) puts(b ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def pu(h) begin; require './../nemi_lib/debug.rb'; puts_val(h); rescue LoadError; end; end
########### ( ˘ω˘ )ｽﾔｧ… ###########
def divisors(num)
  return [1] if num == 1

  pows = []
  # 0乗、1乗・・・した値を入れる
  num.prime_division.each do |b, r|
    pow = []
    0.upto(r).each do |n|
      pow << b ** n
    end

    pows << pow
  end

  first_array = pows.shift
  return first_array if pows.size == 0

  result = first_array.product(*pows)
  result.map do |item|
    item.inject { |sum, i| sum * i }
  end.sort
end

n=gi
a=gsmi.sort.uniq
putsend 0 if a.size==1
h={}
a.each.with_index do |aa,i|
  fl=true
  divs=divisors aa
  divs.each do |d|
    #idx=a.bsearch_index{|x|x>=d}
    # if idx<i && a[idx]==d
    #   fl=false
    # end
    if h[d]
      fl=false
    end
  end
  if fl
    cnt+=1
    h[aa]=1
  end
end

puts cnt