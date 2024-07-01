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
a=gsmi

# 約数
H=Hash.new
require 'prime'
def divisors(num)
  return [1] if num == 1
  return H[num] if H[num]

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
  res=
    result.map do |item|
      item.inject { |sum, i| sum * i }
    end.sort
  H[num]=res
  res
end

ans=[]
(n-1).downto(0) do |i|
  if a[i]==1
    num = i+1
    ans << num
    d = divisors(num)
    d.pop
    d.each do |dd|
      a[dd-1]=(a[dd-1]+1)%2
    end
  end
end

if ans.size.zero?
  puts 0
else
  puts "#{ans.size}\n#{ans.reverse.join(' ')}"
end