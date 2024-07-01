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
require 'prime'
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
a=gsmi

ans=1

# 最小2つの約数のどれかが答え
mins=a.min(2)
lcms = desc (divisors(mins[0])+divisors(mins[1])).uniq
lcms.each do |num|
  cnt=0
  a.each do |aa|
    next if aa%num==0
    cnt+=1
    break if cnt>1
  end
  if cnt<=1
    ans=num
    break
  end
end
puts ans