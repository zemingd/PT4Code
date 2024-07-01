require 'prime'
MOD=10**9+7;  cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.chomp.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def ar2(s1,s2,de=nil) Array.new(s1){Array.new(s2,de)} end
def ar3(s1,s2,s3,de=nil) Array.new(s1){Array.new(s2){Array.new(s3,de)}} end

def desc(ar) ar.sort!{|x,y| y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end
def ceil(a,b) (a.to_f/b).ceil end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end
def rui(ar) s=[0]; ar.size.times{|i| s<<s[-1]+ar[i]}; s end
def rev_rui(ar) s=[0]; ar.size.times.reverse_each{|i| s<<s[-1]+ar[i]}; s end

def puts_yesno(b) puts(b ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def pu(h) begin; require './../nemi_lib/debug.rb'; puts_val(h); rescue LoadError; end; end
########### ( ˘ω˘ )ｽﾔｧ… ###########
a=[]
3.times{a<<gsmi}
n=gi
b=n.times.map{gi}


hits=ar2(3,3,0)
b.each do |i|
  a.each.with_index do |j,ji|
    j.each.with_index do |k,kk|
      if i==k
        hits[ji][kk]=1
      end
    end
  end
end

# たて
hits.each.with_index do |j,ji|
  if j.count(1)==3
    putsend 'Yes'
  end
end
#よこ
hits.transpose.each.with_index do |j,ji|
  if j.count(1)==3
    putsend 'Yes'
  end
end
#ななめ
if hits[0][0]==1&&hits[1][1]==1&&hits[2][2]==1 ||hits[0][2]==1&&hits[1][1]==1&&hits[2][0]==1
  putsend 'Yes'
end
puts 'No'